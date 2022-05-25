SELECT song.song_name AS nome, COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.history as history
JOIN SpotifyClone.songs AS song ON history.song_id = song.song_id
JOIN SpotifyClone.users AS users ON users.user_id = history.user_id
WHERE users.plan_id IN (1, 4)
GROUP BY nome;
