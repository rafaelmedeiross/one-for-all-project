SELECT COUNT(DISTINCT song.song_name) AS cancoes,
COUNT(DISTINCT artist.artist_name) AS artistas,
COUNT(DISTINCT album.album_name) AS albuns
FROM SpotifyClone.songs AS song, SpotifyClone.artists AS artist, SpotifyClone.albums AS album;
