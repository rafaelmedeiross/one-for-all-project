SELECT users.user_name AS usuario, 
COUNT(history.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(songs.song_seconds) / 60, 2) AS total_minutos

FROM SpotifyClone.users AS users
JOIN SpotifyClone.history AS history ON users.user_id = history.user_id
JOIN SpotifyClone.songs AS songs ON songs.song_id = history.song_id

GROUP BY users.user_name;
