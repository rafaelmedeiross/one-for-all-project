SELECT artist.artist_name AS artista, album.album_name AS album,
 COUNT(followers.artist_id) as seguidores
FROM SpotifyClone.artists AS artist

INNER JOIN SpotifyClone.albums AS album ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.followers AS followers ON artist.artist_id = followers.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
