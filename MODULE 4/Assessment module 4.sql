create table Noble_win
(
	YEAR INT NOT NULL,
    SUBJECT VARCHAR(50) NOT NULL,
    WINNER VARCHAR(100) NOT NULL,
    COUNTRY VARCHAR(50) NOT NULL,
    CATEGORY VARCHAR(100) NOT NULL
);

SELECT * FROM noble_win;
INSERT INTO noble_win (year, subject, winner, country, category)
VALUES
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1994, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');
 
select year,subject,winner from noble_win where Year = 1970;
SELECT * FROM noble_win;
select year, subject, winner,country from noble_win where subject = 'Chemistry' and YEAR between 1965 and 1975;
select year,subject,winner,country from noble_win where winner like '%LOUIS%';
select * from noble_win where subject not like 'P%' order by year desc;
select * from noble_win where subject not like 'P%' order by winner asc;
select year,subject,winner,country,category from noble_win where year = 1970 AND SUBJECT NOT IN ('Chemistry','Economics') 
Union 
select year,subject,winner,country,category from noble_win where year = 1970 AND subject IN ('Chemistry','Economics') order by SUBJECT desc;


