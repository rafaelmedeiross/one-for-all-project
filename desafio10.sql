SELECT song.song_name AS nome, 
COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.history as history
INNER JOIN SpotifyClone.songs AS song ON history.song_id = song.song_id
INNER JOIN SpotifyClone.users AS users ON users.user_id = history.user_id
WHERE users.plan_TYPE IN ('Pessoal', 'Gratuito')
GROUP BY nome;
