const resolvers = {
    Query: {
        songs: async (_, args, {client}) => {
            let {rows} = await client.query(`
            SELECT songs.songid, songs.songname, songs.genreid FROM songs LIMIT 5;
            `)
            return rows
            }           
    },
}
const loaders = {
    Song: {
            genre: async (queries, {client}) => {     
            let genreids = queries.map(({ obj }) => obj.genreid)  
            let {rows} = await client.query(`
            SELECT genreid, genredescription genre FROM genres WHERE  genres.genreid = ANY ($1)
            `,[genreids])    
            return genreids.map(genreid => {
               return rows.filter(genreitem => genreitem.genreid === genreid)[0].genre
            })
        },
    }
}
module.exports = {resolvers, loaders}


