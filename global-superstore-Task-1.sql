/*  Create database Global_Superstore */

CREATE TABLE Sales (
  order_id varchar(40) primary key,
  order_date_str varchar(20),   /*inserted date as 'dd-mm-yyyy' string here*/
  order_date Date Generated always as (STR_TO_DATE(order_date_str, '%d-%m-%Y')) Stored, /*auto converted*/	
  customer_name varchar(30) not null,	
  region varchar(20) not null,	
  category varchar(20) not null,
  sales	decimal(10,2),
  quantity integer,
  discount decimal(5,2),	
  profit decimal(10,2)
);
select * from Sales;

insert into Sales (order_id, order_date_str, customer_name, region, category, sales, quantity, discount, profit) values
('CA-2014-AB10015140-41954', '11-11-2014',	'Aaron Bergman',	'Central US',	'Technology',	221.98,	2,	0,	62.15),
('IN-2014-JR162107-41675',	'05-02-2014',	'Justin Ritter',	'Oceania',	'Furniture',	3709.4,	9,	10,	288.77),
('IN-2014-CR127307-41929',	'17-10-2014',	'Craig Reiter', 'Oceania', 'Technology',	5175.17,	9,	10,	919.97),
('ES-2014-KM1637548-41667',	'28-01-2014',	'Katherine Murray',	'Western Europe',	'Technology',	2892.51,	5,	10,	96.54),
('SG-2014-RH9495111-41948',	'05-11-2014',	'Rick Hansen',	'Western Africa',	'Technology',	2832.96,	8,	0,	311.52),
('IN-2014-JM156557-41818',	'28-06-2014',	'Jim Mitchum',	'Oceania',	'Technology',	2862.68,	5,	10,	763.28),
('IN-2012-TS2134092-41219',	'06-11-2012',	'Toby Swindell', 'Oceania',	'Furniture',	1822.08,	4,	0,	564.84),
('IN-2013-MB1808592-41378',	'14-04-2013',	'Mick Brown',	'Oceania',	'Furniture',	5244.84,	6,	0,	996.48),
('CA-2012-AB10015140-40974', '06-03-2012', 'Aaron Bergman',	'Western US',	'Furniture',	48.71,	1,	20,	5.48),
('ID-2013-AJ107801-41383',	'19-04-2013',	'Anthony Jacobs',	'Southern Asia',	'Furniture',	4626.15,	5,	0,	647.55),
('SA-2012-MM7260110-41269',	'26-12-2012',	'Magdelene Morse',	'Western Asia',	'Technology',	2616.96,	4,	0,	1151.40),
('MX-2013-VF2171518-41591',	'13-11-2013',	'Vicky Freymann',	'South America',	'Furniture',	2221.8,	7,	0,	622.02),
('IN-2014-PF1912027-41796',	'06-06-2014',	'Peter Fuller',	'Eastern Asia',	'Office Supplies',	3701.52,	12,	0,	1036.08),
('ES-2015-BP1118545-42216',	'31-07-2015',	'Ben Peterman',	'Western Europe',	'Office Supplies',	1869.59,	4,	10,	186.95),
('CA-2012-AB10015140-40958', '19-02-2012', 'Aaron Bergman',	'Central US',	'Office Supplies',	12.62,	2,	20,	2.52),
('ES-2015-PJ1883564-42255',	'08-09-2015',	'Patrick Jones',	'Southern Europe',	'Office Supplies', 7958.58,	14,	0, 3979.08),
('IN-2015-JS156857-42035',	'31-01-2015',	'Jim Sink',	'Oceania',	'Technology',	2565.59,	9,	10,	28.40),
('TZ-2015-RH9555129-42343',	'05-12-2015',	'Ritsa Hightower',	'Eastern Africa',	'Office Supplies', 3409.74, 6,	0, 818.28),
('PL-2013-AB600103-41494',	'08-08-2013',	'Ann Blume',	'Eastern Europe',	'Furniture',	1977.72,	4,	0,	276.84),
('IN-2012-JK1532527-41030',	'01-05-2012',	'Jason Klamczynski',	'Eastern Asia',	'Furniture',	2754,	6,	0,	358.02),
('ES-2014-LB16795139-41697', '27-02-2014', 'Laurel Beltran',	'Northern Europe',	'Office Supplies',	5273.7,	10,	0,	1898.40),
('US-2015-NP1832582-42216',	'31-07-2015',	'Naresj Patel',	'Central America',	'Technology',	1713.84,	4,	0,	445.52),
('MX-2015-VD2167039-42252',	'05-09-2015',	'Valerie Dominguez',	'Central America',	'Furniture',	2106.5,	8,	20,	526.50),
('IN-2012-PB19210127-41259', '16-12-2012', 'Phillip Breyer',	'Eastern Asia',	'Furniture',	1715.16,	2,	0,	720.36),
('ES-2012-EB1411048-40981',	'13-03-2012',	'Eugene Barchas',	'Western Europe',	'Office Supplies',	3069.74, 6, 10, 1364.24),
('CA-2012-AH10030140-41020', '21-04-2012', 'Aaron Hawkins',	'Eastern US',	'Office Supplies',	247.84,	8,	0,	121.44),
('IN-2013-BP1123058-41329',	'24-02-2013',	'Benjamin Patterson', 'Southern Asia', 'Furniture',	1878.72,	4,	0,	582.36),
('US-2012-RR1952536-41270',	'27-12-2012',	'Rick Reed', 'Caribbean',	'Technology',	1696.64,	5,	20,	148.46),
('ES-2013-BS1136545-41472',	'17-07-2013',	'Bill Shonely',	'Western Europe',	'Technology',	2402.87,	9,	15,	763.16);
select * from Sales;

/*___________________Queries___________________ */

/*  Q.1 Total sales by region */
SELECT region, SUM(sales) AS total_sales
FROM Sales
GROUP BY region;

/*  Q.2 Top 5 profitable products */
SELECT category, SUM(profit) AS total_proft
FROM Sales
GROUP BY category
ORDER BY total_proft DESC
LIMIT 5;

/*  Q.3 Monthly sales trend */
SELECT MONTH(order_date_str) AS month,
        SUM(sales) AS total_sales
FROM Sales
GROUP BY month
ORDER BY month;

/*  Q.4 Highest discount impac  */
SELECT discount, AVG(profit)
FROM Sales
GROUP BY discount;






