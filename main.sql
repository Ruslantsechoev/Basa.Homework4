-- create a table
CREATE TABLE general_list (
  id INTEGER PRIMARY KEY,
  FIO VARCHAR(30) NOT NULL,
  Data_B CHAR(10) NOT NULL,
  St_atus VARCHAR(30) NOT NULL,
  Tel VARCHAR(15) NOT NULL,
  Comm_it VARCHAR(30) NOT NULL,
  Address VARCHAR(30) NOT NULL,
  Gr VARCHAR(30) NOT NULL
);

-- insert some values
INSERT INTO general_list VALUES (1, 'Иванов И. И.', '12.02.1990',	'женат', 126 ,	'интернет',	'Можга', 'Работа');
INSERT INTO general_list VALUES (2, 'Кириллов К.К.', '12/3/1996',	'холост', 933,	'личный', 'Киров', 'Работа');
INSERT INTO general_list VALUES (3, 'Иванов И. И.', '9/18/2001', 'холост', 527,	'личный', 'Санкт-Петербург', 'Школа');
INSERT INTO general_list VALUES (4, 'Петров П. П.', '4/23/1983', 'женат', 234, 'личный', 'Москва', 'Родня');
INSERT INTO general_list VALUES (5, 'Михайлов М.М.', '1/8/1997', 'женат', 876, 'личный', 'Сочи', 'Университет');
INSERT INTO general_list VALUES (6, 'Васильев В. В.', '5/21/1998', 'холост', 456, 'личный', 'Белгород', 'Друзья');
INSERT INTO general_list VALUES (7, 'Сидоров С.С.', '7/13/2007', 'холост', 643, 'личный', 'Киров', 'Родня');
INSERT INTO general_list VALUES (8, 'Борисов Б.Б', '8/16/1989', 'холост', 723, 'рабочий', 'Москва',	'Работа');
INSERT INTO general_list VALUES (9, 'Александров А.А.','3/5/1987','женат',412,'рабочий','Уфа', 'Друзья');

-- Чему будет равна выборка:

-- SELECT ФИО, Д/р, Адрес FROM Общий список
SELECT FIO, Data_B, Address  FROM general_list 

-- SELECT ФИО, Статус FROM Общий список WHERE Адрес = «Можга»
-- SELECT ФИО FROM Общий список WHERE Адрес = «Москва» AND Группа = «Работа»
-- SELECT Д/р FROM Общий список WHERE Адрес = «Москва» OR Группа = «Работа»
-- Что будет результатом следующих JOIN’ов:

-- INNER JOIN Люди, Адреса ON id = Чей адрес
-- LEFT JOIN Люди, Адреса ON id = Чей адрес
-- RIGHT JOIN Люди, Адреса ON id = Чей адрес
-- FULL JOIN Люди, Адреса ON id = Чей адрес
-- Дополнительное задание. Что будет результатом выборки:

-- SELECT ФИО, Адрес, Комментарий FROM Люди RIGHT JOIN Адреса ON id = Чей
-- Адрес