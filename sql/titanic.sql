create table titanic_age (
age INT,
count INT,
PRIMARY KEY (age)
)

create table titanic_age_survived (
age INT,
survived_count INT,
PRIMARY KEY (age)
)

create table titanic_age_lost(
age INT,
lost_count INT,
PRIMARY KEY (age)
)

INSERT INTO titanic_age (age, count)
SELECT floor(`Age`/10) * 10 + 10 AS age, COUNT(*) AS count
FROM titanic_raw
WHERE `Age` > 0
GROUP BY floor(`Age`/10) * 10 + 10
ORDER BY age ASC;

INSERT INTO titanic_age_survived (age, survived_count)
SELECT floor(`Age`/10) * 10 + 10 AS c_age , Count(raw.survived) as survived_count
FROM titanic_raw as raw
WHERE `Age` > 0 and raw.survived = 1
GROUP BY  c_age
ORDER BY c_age ASC;

INSERT INTO titanic_age_lost (age, lost_count)
SELECT floor(`Age`/10) * 10 + 10 AS c_age , Count(raw.survived) as lost_cout
FROM titanic_raw as raw
WHERE `Age` > 0 and raw.survived = 0
GROUP BY  c_age
ORDER BY c_age ASC;