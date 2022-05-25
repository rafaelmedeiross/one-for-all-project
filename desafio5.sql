SELECT songs.song_name AS cancao, 
COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.songs AS songs
JOIN SpotifyClone.history AS history ON songs.song_id = history.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
