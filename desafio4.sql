SELECT users.user_name AS usuario, 
IF(TIMEDIFF(MAX(history.played_date), "2020-12-31 23:59::59") > 0, "Usuário ativo", "Usuário inativo") "condicao_usuario"
FROM SpotifyClone.users as users

JOIN SpotifyClone.history as history ON history.user_id = users.user_id

GROUP BY users.user_name;
