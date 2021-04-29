const {parseResolveInfo,simplifyParsedResolveInfoFragmentWithType} = require('graphql-parse-resolve-info');
async function fetchsongs (string, client) {
    try {
        let {rows} = await client.query(string)
        return rows
    } catch(err) {
         console.log(err)
    }
 }

const loaders = {
    Song: {
        genre: async (queries, {client}) => {     
            let genreids = queries.map(({ obj }) => obj.genreid)  
            let {rows} = await client.query(`
            SELECT genreid, genredescription genre FROM genres WHERE  genres.genreid in (${genreids})
            `)    
            const genreMap = {}
            rows.forEach(genre => {
                genreMap[genre.genreid] = genre.genre
            })
            return genreids.map(genreid => genreMap[genreid])
        },
        artists: async (queries, {client}) => {
            let songids = queries.map(({ obj }) => `'${obj.songid}'`)
            console.log(songids)
            let {rows} = await client.query(`
            SELECT  artists_songs.songid, json_agg(json_build_object('artistid', artists.artistid, 'artistname', artists.artistname)) artists
            FROM artists
            INNER JOIN artists_songs
            USING (artistid)
            WHERE artists_songs.songid in (${songids})
            group by artists_songs.songid;
            `)
            const artistsMap = {}
            rows.forEach(item => {
                artistsMap[item.songid] = item.artists
            })
            console.log(artistsMap)
            return songids.map(songid => artistsMap[songid.slice(1, -1)])
        }
    }
}
const resolvers = {
    Query: {
        songs: async (_, args, {client}) => {
        let {rows} = await client.query(`
        SELECT songs.songid, songs.songname, songs.genreid
        FROM songs
        LIMIT 5;
        `)
        return rows
        }
    },
}
module.exports = {resolvers, loaders}


