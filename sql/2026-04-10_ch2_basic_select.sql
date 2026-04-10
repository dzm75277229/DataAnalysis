#创建数据库
CREATE DATABASE test;
#删除数据库
DROP DATABASE test;
#显示所有的数据库
SHOW DATABASES;
#显示表
SHOW TABLES;
#显示表结构
SHOW COLUMNS FROM gongsiname;
#删除表

#按照降序进行排序
select * from gongsiname order by id desc;
#按照多行降序进行排序
select * from gongsiname order by id desc,price;
#过滤数据(where在order by的前面）
select * from gongsiname where price=123 order by id desc;
select * from gongsiname where price>=123;
select * from gongsiname where price is null;
select * from gongsiname where price BETWEEN 123 and 456;
select * from gongsiname where price!=123;
#多个条件过滤and连接词，or连接词,多个连接词出现的时候用括号来界定,not ,in
select * from gongsiname where price=123 AND id=1;
select * from gongsiname where price=123 OR price=13;
select * from gongsiname where (price=123 or price=344) AND id<10;
select * from gongsiname where name IN('小米','华为');
select * from gongsiname where not name IN('小米','华为');

#用通配符进行过滤,_只匹配一个字符
select * from gongsiname where name like '%vo';
select * from gongsiname where name like 'v%o';
select * from gongsiname where name like '_vo';
#用正则表达式进行搜索(第二个语句和like一样的功能）,'.'表示通配任何字符
select * from gongsiname where name REGEXP 'vo';
select * from gongsiname where name REGEXP '^vivo$';
select * from gongsiname where name REGEXP 'vo|sh';
select * from gongsiname where name REGEXP '[ei]vo';
select * from gongsiname where name REGEXP '[0-9]vo';
select * from gongsiname where name REGEXP '.';
select * from gongsiname where name REGEXP '\\.';
#使用函数,count()计算出多少行非空，sum(不可以为*)
select name,UPPER(name) AS name_upper from gongsiname;
SELECT COUNT(*) FROM gongsiname;
SELECT COUNT(price) FROM gongsiname;
SELECT SUM(price) FROM gongsiname;
SELECT AVG(price) FROM gongsiname;
SELECT MAX(price) FROM gongsiname;
SELECT MIN(price) FROM gongsiname;
#group by,出现在select后面的列只能是groupby后面的列和聚合函数，where在groupby前，having在groupby后
SELECT GP,COUNT(*) FROM gongsiname GROUP BY GP;
SELECT GP,COUNT(*) FROM gongsiname where price=123 GROUP BY GP;
SELECT GP,COUNT(*) FROM gongsiname GROUP BY GP,name;
#where在分组前过滤，having在分组之后过滤，只有orderby可以使用别名，其他尽量不使用
UPDATE gongsiname SET price=4 WHERE name='红米';
