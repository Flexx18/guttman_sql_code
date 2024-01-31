SELECT 'DROPPING USER admin_001' AS 'INSTALLATION PROGRESSING';

DROP USER
IF EXISTS 'admin_001'@'%';

SELECT 'ADDING USER admin_001' AS 'INSTALLATION PROGRESSING';
CREATE USER
IF NOT EXISTS 'admin_001'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
WITH
-- Set RESOURCE LIMITS
  MAX_QUERIES_PER_HOUR 20
  MAX_UPDATES_PER_HOUR 10
  MAX_CONNECTIONS_PER_HOUR 5
  MAX_USER_CONNECTIONS 2
  -- SET PASSWORD OPTIONS
    FAILED_LOGIN_ATTEMPTS 4
    PASSWORD_LOCK_TIME UNBOUNDED
    PASSWORD EXPIRE INTERVAL 90 DAY
    PASSWORD HISTORY 5
    PASSWORD REUSE INTERVAL 365 DAY;

    SELECT user, show_db_priv, account_locked
    FROM mysql.user;

    SELECT 'DROPPING USER admin_002' AS 'INSTALLATION PROGRESSING';

    DROP USER
    IF EXISTS 'admin_002'@'%';

    SELECT 'ADDING USER admin_002' AS 'INSTALLATION PROGRESSING';
    CREATE USER
    IF NOT EXISTS 'admin_002'@'%'
    IDENTIFIED BY 'guttmanGrizzlies_2024'
    WITH
    -- Set RESOURCE LIMITS
      MAX_QUERIES_PER_HOUR 20
      MAX_UPDATES_PER_HOUR 10
      MAX_CONNECTIONS_PER_HOUR 5
      MAX_USER_CONNECTIONS 2
      -- SET PASSWORD OPTIONS
        FAILED_LOGIN_ATTEMPTS 4
        PASSWORD_LOCK_TIME UNBOUNDED
        PASSWORD EXPIRE INTERVAL 90 DAY
        PASSWORD HISTORY 5
        PASSWORD REUSE INTERVAL 365 DAY;

        SELECT user, show_db_priv, account_locked
        FROM mysql.user;

        SELECT 'DROPPING USER admin_003' AS 'INSTALLATION PROGRESSING';

        DROP USER
        IF EXISTS 'admin_003'@'%';

        SELECT 'ADDING USER admin_003' AS 'INSTALLATION PROGRESSING';
        CREATE USER
        IF NOT EXISTS 'admin_003'@'%'
        IDENTIFIED BY 'guttmanGrizzlies_2024'
        WITH
        -- Set RESOURCE LIMITS
          MAX_QUERIES_PER_HOUR 20
          MAX_UPDATES_PER_HOUR 10
          MAX_CONNECTIONS_PER_HOUR 5
          MAX_USER_CONNECTIONS 2
          -- SET PASSWORD OPTIONS
            FAILED_LOGIN_ATTEMPTS 4
            PASSWORD_LOCK_TIME UNBOUNDED
            PASSWORD EXPIRE INTERVAL 90 DAY
            PASSWORD HISTORY 5
            PASSWORD REUSE INTERVAL 365 DAY;

            SELECT user, show_db_priv, account_locked
            FROM mysql.user;


            SELECT 'DROPPING USER admin_004' AS 'INSTALLATION PROGRESSING';

            DROP USER
            IF EXISTS 'admin_004'@'%';

            SELECT 'ADDING USER admin_003' AS 'INSTALLATION PROGRESSING';
            CREATE USER
            IF NOT EXISTS 'admin_004'@'%'
            IDENTIFIED BY 'guttmanGrizzlies_2024'
            WITH
            -- Set RESOURCE LIMITS
              MAX_QUERIES_PER_HOUR 20
              MAX_UPDATES_PER_HOUR 10
              MAX_CONNECTIONS_PER_HOUR 5
              MAX_USER_CONNECTIONS 2
              -- SET PASSWORD OPTIONS
                FAILED_LOGIN_ATTEMPTS 4
                PASSWORD_LOCK_TIME UNBOUNDED
                PASSWORD EXPIRE INTERVAL 90 DAY
                PASSWORD HISTORY 5
                PASSWORD REUSE INTERVAL 365 DAY;

                SELECT user, show_db_priv, account_locked
                FROM mysql.user;


                SELECT 'DROPPING USER admin_005' AS 'INSTALLATION PROGRESSING';

                DROP USER
                IF EXISTS 'admin_005'@'%';

                SELECT 'ADDING USER admin_005' AS 'INSTALLATION PROGRESSING';
                CREATE USER
                IF NOT EXISTS 'admin_005'@'%'
                IDENTIFIED BY 'guttmanGrizzlies_2024'
                WITH
                -- Set RESOURCE LIMITS
                  MAX_QUERIES_PER_HOUR 20
                  MAX_UPDATES_PER_HOUR 10
                  MAX_CONNECTIONS_PER_HOUR 5
                  MAX_USER_CONNECTIONS 2
                  -- SET PASSWORD OPTIONS
                    FAILED_LOGIN_ATTEMPTS 4
                    PASSWORD_LOCK_TIME UNBOUNDED
                    PASSWORD EXPIRE INTERVAL 90 DAY
                    PASSWORD HISTORY 5
                    PASSWORD REUSE INTERVAL 365 DAY;

                    SELECT user, show_db_priv, account_locked
                    FROM mysql.user;


                    SELECT 'DROPPING USER admin_006' AS 'INSTALLATION PROGRESSING';

                    DROP USER
                    IF EXISTS 'admin_006'@'%';

                    SELECT 'ADDING USER admin_006' AS 'INSTALLATION PROGRESSING';
                    CREATE USER
                    IF NOT EXISTS 'admin_006'@'%'
                    IDENTIFIED BY 'guttmanGrizzlies_2024'
                    WITH
                    -- Set RESOURCE LIMITS
                      MAX_QUERIES_PER_HOUR 20
                      MAX_UPDATES_PER_HOUR 10
                      MAX_CONNECTIONS_PER_HOUR 5
                      MAX_USER_CONNECTIONS 2
                      -- SET PASSWORD OPTIONS
                        FAILED_LOGIN_ATTEMPTS 4
                        PASSWORD_LOCK_TIME UNBOUNDED
                        PASSWORD EXPIRE INTERVAL 90 DAY
                        PASSWORD HISTORY 5
                        PASSWORD REUSE INTERVAL 365 DAY;

                        SELECT user, show_db_priv, account_locked
                        FROM mysql.user;








SELECT 'ADDING ROLES ' AS 'INSTALLATION PROGRESSING';
-- CREATE ROLE
CREATE ROLE
IF NOT EXISTS
'read_only_classicmodels_db',
'admin_user',
'read_only_employees_db',
'app_user';

SELECT user, show_db_priv, account_locked
FROM mysql.user;


-- GRANT PRIVILEGES
GRANT SELECT
ON classicmodels.*
TO 'read_only_employees_db'@'%';

GRANT CREATE, DROP
ON classicmodels.*
TO 'admin_user'@'%';

GRANT SHOW DATABASES
ON *.*
TO 'admin_user'@'%';

GRANT INSERT, UPDATE
ON employees.employees
TO 'app_user'@'%';

GRANT SELECT
ON employees.*
TO 'read_only_employees_db'@'%';


SELECT user, show_db_priv, account_locked
FROM mysql.user;

-- CREATE ROLES
SELECT 'CREATING ROLES' AS 'INSTALLATION PROGRESSING';
GRANT 'admin_007' TO 'admin_006';

GRANT 'read_only_classicmodels_db' TO 'admin_001', 'admin_003';

GRANT 'read_only_employees_db' to 'admin_002', 'admin_004';

GRANT 'app_user' TO 'admin_006';

GRANT 'admin_user' TO 'admin_005';

FLUSH PRIVILEGES;


-- CREATE ROLES
SELECT 'ENABLING ROLES' AS 'INSTALLATION PROGRESSING';

SET DEFAULT
ROLE ALL TO 'admin_001'@'%', 'admin_002'@'%',
            'admin_003'@'%', 'admin_004'@'%',
            'admin_005'@'%', 'admin_006'@'%';

-- CREATE ROLES
SELECT 'SCRIPT DONE' AS 'INSTALLATION PROGRESSING';