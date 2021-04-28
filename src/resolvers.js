const resolvers = {
    Query: {
        songs: async (_, args, {client}) => {
        let {rows} = await client.query(`
        select songs.songid, songs.songname, songs.genreid,
        json_agg(json_build_object(
            'artistid', artists.artistid, 
            'artistname', artists.artistname
        )) artists
        from songs 
        inner join artists_songs arso
        on songs.songid = arso.songid
        inner join artists
        on arso.artistid = artists.artistid
        group by songs.songid, songs.songname
        LIMIT 5;
        `)
        return rows
        }
    },
    Song: {
        genre: async (parent, args, {client}) => {
            let {rows} = await client.query(`
                SELECT genredescription genre FROM genres where  genres.genreid = ${parent.genreid};
            `)
            return rows[0].genre
           
        }
    }
}

module.exports = resolvers