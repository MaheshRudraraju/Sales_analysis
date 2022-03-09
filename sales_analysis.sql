SELECT * FROM sales.customers;
SELECT count(*) FROM sales.customers;
SELECT * FROM sales.transactions where market_code='Mark001';
SELECT * FROM sales.transactions where currency='USD';
SELECT sales.transactions.*,sales.date.* FROM sales.transactions INNER JOIN sales.date ON transactions.order_date = date.date where date.year=2020;
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON transactions.order_date = date.date where date.year=2020;
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON transactions.order_date = date.date where date.year=2020 AND date.month_name='January';
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON transactions.order_date = date.date where date.year=2020 AND market_code='Mark001';