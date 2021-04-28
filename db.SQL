CREATE TABLE Genres (
    GenreID SMALLINT NOT NULL PRIMARY KEY,
    GenreDescription VARCHAR(75) NULL
);

INSERT INTO genres (genreid, genredescription) VALUES (1,'dark pop');
INSERT INTO Genres (GenreID, GenreDescription) VALUES (2,'pop');
INSERT INTO Genres (GenreID, GenreDescription) VALUES (3,'electropop');
INSERT INTO Genres (GenreID, GenreDescription) VALUES (4,'latin');
INSERT INTO Genres (GenreID, GenreDescription) VALUES (5,'R&B');
INSERT INTO Genres (GenreID, GenreDescription) VALUES (6,'hiphop');

CREATE TABLE Artists (
    ArtistId UUID NOT NULL PRIMARY KEY,
    ArtistName VARCHAR(75) NOT NULL
);


INSERT INTO 
Artists (ArtistId, ArtistName) 
VALUES ('ba79fc29-84c6-4946-80c1-d37141a06383', 'Alec Benjamin');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('effdd8d7-04dd-4287-b264-de00fb29d9f2', 'Alessia Cara');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('2b1521db-1030-48ff-b6c7-29af0e3a6a8d', 'Tate McRae');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('bbb9bf2d-d20f-4857-b3e7-d68cce5c8f5f', 'Lost Kings');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('d03fc50a-b3c2-45e5-9ea9-9601c7e68ced', 'Loren Gray');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('b2dcf216-6fe1-4b0e-8ab4-eb94f9bc8ae8', 'Gryffin');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('8aecb6c6-e3ff-48d7-9a4f-923d98f474a2', 'ILLENIUM');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('bdf3b50e-17f5-4238-9047-83cafc19044b', 'Daya');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('d829ab18-f037-4e7f-877b-3120b94a74bc', 'Dua Lipa');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('ca865345-fcf0-496c-9466-8502a378cb4e', 'Martin Garrix');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('dd9151d1-e508-4b3f-9b8c-96e6c9212dab', 'Elley Duhé');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('f4d4be34-2664-4629-a05f-ae3462198dcc', 'FadedwithFriends');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('2a524ac2-e28a-47f2-bc0e-17ea91cbef6e', 'A R I Z O N A');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('02055bdf-9de2-4e3f-8f8d-01dd9d88b57a', 'ROSALÍA');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('1e56f297-193d-498e-a2f1-14aa2993c62f', 'J Balvin');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('4cbd1345-2d85-498e-ac55-6f00b8bf2db2', 'El Guincho');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('9d0a43b2-7543-46a2-9288-cf22b4c12450', 'Halsey');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('dbbcf156-4045-43c3-afd1-59b30580a1f7', 'Chris Brown');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('5e10f784-0677-4b15-99f5-8fa42a1b4d12', 'Marshmello');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('1242542a-d42c-46a4-95f4-2c99db1396cd', 'CHVRCHES');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('0e6b0a64-0d5a-401b-b2a3-be82181a4200', 'Kirko Bangz');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('ce5bcdca-1b8c-4954-a977-588f26818f3c', 'Troye Sivan');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('3cc87ede-8a15-42c1-8b19-003cd393561c', 'Kiiara');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('266e9a22-b86b-41df-a3e6-d6c345536fca', 'Felix Snow');
INSERT INTO Artists (ArtistId, ArtistName) VALUES ('4ad48875-cae2-4c07-8ecd-7c7b3ada811d', 'Hailee Steinfeld');

  
CREATE TABLE Songs (
    SongID UUID NOT NULL PRIMARY KEY,
    SongName VARCHAR(75) NOT NULL,
    GenreID SMALLINT NOT NULL,
    Artists TEXT [] 
);


  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('c7406c7b-1dc0-4672-9653-3ad7ee3c54de', 'everything i wanted', 1, ARRAY ['Billie Eilish']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('c1c74ad2-c7aa-4cac-96b9-ca696fb83ae1', 'lovely (with Khalid)', 2, ARRAY [ 'Billie Eilish','Khalid' ]);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('f4b800b9-5093-49a7-9bc8-37561b2d7041', 'Let Me Down Slowly (feat. Alessia Cara)', 2, ARRAY ['Alec Benjamin','Alessia Cara']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('8a3416e9-a4ab-468c-b81d-b58c214ed3fd', 'stupid', 2, ARRAY [ 'Tate McRae' ]);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('0056715d-d3f5-4bc7-bba6-36cd033f6d26', 'idontwannabeyouanymore', 1, ARRAY ['Billie Eilish']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('3fc2e6aa-672d-4b4c-aa74-9a9532d8b156', 'Anti-Everything', 2, ARRAY ['Lost Kings','Loren Gray']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('3e5b0e36-6ad8-444c-81b4-9ecf442bc119', 'Feel Good (feat. Daya)', 3, ARRAY ['Gryffin','ILLENIUM','Daya']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('cded02b4-ff58-4244-ad43-d270b1973a38', 'ocean eyes', 1, ARRAY ['Billie Eilish']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('d2c74946-f76e-4577-bf72-8fa12bca29b2', 'Ocean (feat. Khalid)', 3, ARRAY ['Martin Garrix','Khalid']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('90d9d26e-84d2-4c77-a3e2-5880dbbabbce', 'Tie Me Down (with Elley Duhé)', 3, ARRAY ['Gryffin','Elley Duhé']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('475ecc20-6be8-43d2-96e5-447b7bf903a5', 'Not Falling', 2, ARRAY ['FadedwithFriends']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('a42d5214-41da-48cb-bda5-e5b6cc16ce18', 'What She Wants', 2, ARRAY ['A R I Z O N A']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('36b98eaf-53aa-4bf0-b25b-eba61dce9cfa', 'Con Altura', 4, ARRAY ['ROSALÍA','J Balvin','El Guincho']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('68386704-fc83-45a2-99fe-20eb78caab37', 'Empty Gold', 2, ARRAY ['Halsey']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('c97fb751-54b5-4596-919d-78eaeebbb0fa', 'Forever', 5, ARRAY ['Chris Brown']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('647afb7c-8b83-485f-bdd2-57295762149e', 'party favor', 2, ARRAY ['Billie Eilish']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('38a6c84e-d2e3-4973-9fa8-0e869b065a3a', 'Here With Me', 3, ARRAY ['Marshmello','CHVRCHES']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('61b7770d-933e-42ed-9496-885cfa5a7c8b', 'Drank in My Cup', 6, ARRAY ['Kirko Bangz']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('3b0bf009-a374-438f-8272-a95ee8e41b82', 'Without Me', 2, ARRAY ['Halsey']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('fc1a9d58-bd37-4c23-95a0-06acbd3cff4b', 'Touch', 2, ARRAY ['Troye Sivan']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('c1998c48-5dd6-42bc-9e9c-ccf78594d682', 'Happy Little Pill', 2, ARRAY ['Troye Sivan']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('09384c54-5366-42a4-a1f9-54b3f7b50b29', 'Whippin (feat. Felix Snow)', 2, ARRAY ['Kiiara','Felix Snow']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('de49afe0-0b0d-4f62-8cc7-9a2860848af6', 'COPYCAT', 2, ARRAY ['Billie Eilish']);
  INSERT INTO Songs (SongID, SongName, GenreID, Artists) VALUES ('1e162fee-bc93-4dc2-8429-204170619f59', 'Wrong Direction', 2, ARRAY ['Hailee Steinfeld']);
-- Junction table for the many to many relations
  CREATE TABLE Artists_Songs (
      SongName  VARCHAR(75) NOT NULL,
      SongID UUID NOT NULL,
      ArtistId UUID NOT NULL,
      PRIMARY KEY(ArtistId, SongID),
      CONSTRAINT Artists_Songs_FK00 
      FOREIGN KEY (ArtistId) 
      REFERENCES Artists(ArtistId),
      CONSTRAINT Artists_Songs_FK01
      FOREIGN KEY (SongID) 
      REFERENCES Songs(SongID)
  );
-- From the songs table draw this relations to create a junction table
SELECT songs.songname, songs.songid, artists.ArtistId
FROM songs
inner join artists
on artists.artistname = songs.artists[1] 
or artists.artistname = songs.artists[2]
or artists.artistname = songs.artists[3];

-- Insert into our junction table our many to many relations
INSERT INTO Artists_Songs(SongName,  SongID,  ArtistId)
SELECT songs.songname, songs.songid, artists.ArtistId
FROM songs
inner join artists
on artists.artistname = songs.artists[1] 
or artists.artistname = songs.artists[2]
or artists.artistname = songs.artists[3];

-- Remove the Array data type column
ALTER TABLE Songs DROP COLUMN Artists;
-- 
select songs.songid, songs.songname,
            json_agg(json_build_object(
                'artistid', artists.artistid, 
                'artistname', artists.artistname
            )) artists
            from songs 
            inner join artists_songs arso
            on songs.songid = arso.songid
            inner join artists
            on arso.artistid = artists.artistid
            group by songs.songid, songs.songname;
            
-- using a join
            select songs.songid, songs.songname, songs.genreid,
            json_agg(json_build_object(
                'artistid', artists.artistid, 
                'artistname', artists.artistname
            )) artists,
            genres.genredescription genre
            from songs 
            inner join artists_songs arso
            on songs.songid = arso.songid
            inner join artists
            on arso.artistid = artists.artistid
            inner join genres
            using (genreid)
            group by songs.songid, songs.songname, genres.genredescription;