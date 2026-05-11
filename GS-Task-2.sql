/*Create database GS*/

CREATE TABLE order_table (
  order_id varchar(40) primary key,
  order_date varchar(20),
  customer_id varchar(30) not null,	
  product_category varchar(20) not null,
  sales	decimal(10,2),
  quantity integer ,
  profit decimal(10,2),
  discount decimal(5,2)
);
select * from order_table;

insert into order_table (order_id, order_date, customer_id, product_category, sales, quantity, discount, profit) values
('CA-2014-AB10015140-41954', '11-11-2014', 'AB-100151402', 'Technology',	221.98,	2,	0,	62.15),
('IN-2014-JR162107-41675',	'05-02-2014',	'JR-162107', 'Furniture',	3709.4,	9,	10,	288.77),
('IN-2014-CR127307-41929',	'17-10-2014',	'CR-127307', 'Technology',	5175.17,	9,	10,	919.97),
('ES-2014-KM1637548-41667',	'28-01-2014',	'KM-1637548',	'Technology',	2892.51,	5,	10,	96.54),
('SG-2014-RH9495111-41948',	'05-11-2014',	'RH-9495111',	'Technology',	2832.96,	8,	0,	311.52),
('IN-2014-JM156557-41818',	'28-06-2014',	'JM-156557',	'Technology',	2862.68,	5,	10,	763.28),
('IN-2012-TS2134092-41219',	'06-11-2012',	'TS-2134092', 'Furniture',	1822.08,	4,	0,	564.84),
('IN-2013-MB1808592-41378',	'14-04-2013',	'MB-1808592',	'Furniture',	5244.84,	6,	0,	996.48),
('CA-2012-AB10015140-40974', '06-03-2012', 'AB-100151402',	'Furniture',	48.71,	1,	20,	5.48),
('ID-2013-AJ107801-41383',	'19-04-2013',	'AB-100151404',	'Furniture',	4626.15,	5,	0,	647.55),
('SA-2012-MM7260110-41269',	'26-12-2012',	'AB-100151404',	'Technology',	2616.96,	4,	0,	1151.40),
('MX-2013-VF2171518-41591',	'13-11-2013',	'AJ-107801',	'Furniture',	2221.8,	7,	0,	622.02),
('IN-2014-PF1912027-41796',	'06-06-2014',	'MM-7260110',	'Office Supplies',	3701.52,	12,	0,	1036.08),
('ES-2015-BP1118545-42216',	'31-07-2015',	'VF-2171518',	'Office Supplies',	1869.59,	4,	10,	186.95),
('CA-2012-AB10015140-40958', '19-02-2012', 'PF-1912027',	'Office Supplies',	12.62,	2,	20,	2.52),
('ES-2015-PJ1883564-42255',	'08-09-2015',	'BP-1118545',	'Office Supplies', 7958.58,	14,	0, 3979.08),
('IN-2015-JS156857-42035',	'31-01-2015',	'AB-100151402',	'Technology',	'2565.59',	9,	10,	28.40),
('TZ-2015-RH9555129-42343',	'05-12-2015',	'PJ-1883564',	'Office Supplies', 3409.74, 6,	0, 818.28),
('PL-2013-AB600103-41494',	'08-08-2013',	'JS-156857',	'Furniture',	1977.72,	4,	0,	276.84),
('IN-2012-JK1532527-41030',	'01-05-2012',	'RH-9555129',	'Furniture',	2754,	6,	0,	358.02),
('ES-2014-LB16795139-41697', '27-02-2014', 'AB-600103',	'Office Supplies',	5273.7,	10,	0,	1898.40),
('US-2015-NP1832582-42216',	'31-07-2015',	'AB-100151404',	'Technology',	'1713.84',	4,	0,	445.52),
('MX-2015-VD2167039-42252',	'05-09-2015',	'JK-1532527', 'Furniture',	2106.5,	8,	20,	526.50),
('IN-2012-PB19210127-41259', '16-12-2012', 'LB-16795139', 'Furniture',	1715.16,	2,	0,	720.36),
('ES-2012-EB1411048-40981',	'13-03-2012',	'NP-1832582',	'Office Supplies',	3069.74, 6, 10, 1364.24),
('CA-2012-AH10030140-41020', '21-04-2012', 'VD-2167039', 'Office Supplies',	247.84,	8,	0,	121.44),
('IN-2013-BP1123058-41329',	'24-02-2013',	'PB-19210127', 'Furniture',	1878.72,	4,	0,	582.36),
('US-2012-RR1952536-41270',	'27-12-2012',	'EB-1411048', 'Technology',	1696.64,	5,	20,	148.46),
('ES-2013-BS1136545-41472',	'17-07-2013',	'AH-100301406',	'Technology',	2402.87,	9,	15,	763.16);
select * from order_table;

CREATE TABLE customers (
  customer_id varchar(30) not null,
  customer_name varchar(20) not null,
  segment varchar(20) not null,
  region varchar(20) not null
);
select * from customers;

insert into customers(customer_id,	customer_name,	region,	segment) values
('AB-100151402',	'Aaron Bergman',	'Central US',	'Consumer'),
('JR-162107',	'Justin Ritter',	'Oceania',	'Corporate'),
('CR-127307',	'Craig Reiter',	'Oceania',	'Consumer'),
('KM-1637548',	'Katherine Murray',	'Western Europe',	'Home Office'),
('RH-9495111',	'Rick Hansen',	'Western Africa',	'Consumer'),
('JM-156557',	'Jim Mitchum',	'Oceania',	'Corporate'),
('TS-2134092',	'Toby Swindell',	'Oceania',	'Consumer'),
('MB-1808592',	'Mick Brown',	'Oceania',	'Consumer'),
('AB-100151402',	'Aaron Bergman',	'Central US',	'Consumer'),
('AB-100151404',	'Aaron Bergman',	'Western US',	'Consumer'),
('AB-100151404',	'Aaron Bergman',	'Western US',	'Consumer'),
('AJ-107801',	'Anthony Jacobs',	'Southern Asia',	'Corporate'),
('MM-7260110',	'Magdelene Morse',	'Western Asia',	'Consumer'),
('VF-2171518',	'Vicky Freymann',	'South America',	'Home Office'),
('PF-1912027',	'Peter Fuller',	'Eastern Asia',	'Consumer'),
('BP-1118545',	'Ben Peterman', 'Western Europe',	'Corporate'),
('AB-100151402',	'Aaron Bergman',	'Central US',	'Consumer'),
('PJ-1883564',	'Patrick Jones',	'Southern Europe',	'Corporate'),
('JS-156857',	'Jim Sink',	'Oceania',	'Corporate'),
('RH-9555129',	'Ritsa Hightower',	'Eastern Africa',	'Consumer'),
('AB-600103',	'Ann Blume',	'Eastern Europe',	'Corporate'),
('AB-100151404',	'Aaron Bergman',	'Western US',	'Consumer'),
('JK-1532527',	'Jason Klamczynski',	'Eastern Asia',	'Corporate'),
('LB-16795139',	'Laurel Beltran',	'Northern Europe',	'Home Office'),
('NP-1832582',	'Naresj Patel',	'Central America',	'Consumer'),
('VD-2167039',	'Valerie Dominguez',	'Central America',	'Consumer'),
('PB-19210127',	'Phillip Breyer',	'Eastern Asia',	'Corporate'),
('EB-1411048',	'Eugene Barchas',	'Western Europe',	'Consumer'),
('AH-100301406',	'Aaron Hawkins',	'Eastern US',	'Corporate'); 
select * from customers;

--Task queries-----

--perform inner join--
select o.order_id, o.order_date, c.customer_name, c.region, o.product_category, o.sales, o.profit
from order_table o
inner join customers c
on o.customer_id = c.customer_id;

--calculate key KPIs--
select c.region,
      sum(o.sales) as total_sales
from order_table o
join customers c
on o.customer_id = c.customer_id
group by c.region;

--profit margin by category--
select product_category,
      sum(profit)/sum(sales) as profit_margin
from order_table 
group by product_category;

--monthly sales trend--
select 
    strftime('%m', order_date) as month,
    sum(sales) as Monthly_Sales
from order_table
group by month
order by month;

--top 5 customers by revenue--
select c.customer_name,
      sum(o.sales) as Total_Revenue
from order_table o
join customers c
on o.customer_id = c.customer_id
group by c.customer_name
order by Total_Revenue desc limit 5;






