SELECT artist.artist_name AS artista, album.album_name AS album
FROM SpotifyClone.artists AS artist
INNER JOIN SpotifyClone.albums AS album ON artist.artist_id = album.artist_id
HAVING artista = 'Walter Phoenix';

