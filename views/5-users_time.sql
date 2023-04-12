
DROP VIEW IF EXISTS users_time ;
CREATE OR REPLACE VIEW users_time 
AS 
SELECT 
  users.*,
  current_date AS real_time
FROM users;