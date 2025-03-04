-- Создаем роль с правами на создание баз данных и добавление данных
CREATE ROLE 'lu4dan';

-- Предоставляем роли права на создание баз данных
GRANT CREATE ON *.* TO 'lu4dan';



-- Назначаем привилегии роли для работы с данными в базе данных apteka
GRANT SELECT, INSERT, UPDATE, DELETE ON apteka.* TO 'lu4dan';

-- Создаем пользователя
CREATE USER 'dasss'@'localhost' IDENTIFIED BY '123456987!';

-- Устанавливаем пароль на неистечение (опционально)
ALTER USER 'dasss'@'localhost' PASSWORD EXPIRE NEVER;

-- Назначаем роль пользователю
GRANT 'lu4dan' TO 'dasss'@'localhost';

-- Устанавливаем роль по умолчанию для пользователя
SET DEFAULT ROLE 'lu4dan' TO 'dasss'@'localhost';

FLUSH PRIVILEGES; -- Применяем изменения
