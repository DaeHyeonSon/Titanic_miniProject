use fisa;
 
DROP TABLE IF EXISTS titanic_raw;

CREATE TABLE titanic_raw
(	passengerid  INT,
	survived     INT,
	pclass       INT,
	name         VARCHAR(100),
	gender       VARCHAR(50),
	age          DOUBLE,
	sibsp        INT,
	parch        INT,
	ticket       VARCHAR(80),
	fare         DOUBLE,
	cabin        VARCHAR(50) ,
	embarked     VARCHAR(20),
	PRIMARY KEY (passengerid)
);