-- Consulta 1
SELECT client_id FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- Consulta 2
SELECT client_id FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Consulta 3
SELECT amount FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Consulta 4
SELECT DISTINCT status FROM loan;

-- Consulta 5
SELECT loan_id from loan
ORDER BY payments DESC
LIMIT 1;

-- Consulta 6
SELECT account_id, amount FROM loan
ORDER BY account_id
LIMIT 5;

-- Consulta 7
select account_id FROM loan
WHERE duration = 60
ORDER BY amount ASC;

-- Consulta 8
SELECT DISTINCT k_symbol FROM `order`;

-- Consylta 9
SELECT order_id FROM `order`
WHERE account_id = 34;

-- Consulta 10
SELECT DISTINCT account_id FROM `order`
WHERE order_id between 29540 and 29560;

-- Consulta 11
SELECT DISTINCT amount FROM `order`
WHERE account_to = 30067122;

-- Consulta 12
SELECT trans_id, `date`, `type`, amount FROM trans
WHERE account_id = 794
ORDER BY `date` DESC
limit 10;

-- Consulta 13
SELECT district_id, count(district_id) as num_clientes FROM client
WHERE district_id <10
group by district_id
order by district_id asc;

-- Consulta 15
select account_id, sum(account_id) as total_amount
from loan
group by account_id
order by total_amount desc
limit 10;

-- Consulta 17
select date, duration, count(duration) as num_loans
from loan
where date >= 971201 and date < 980101
group by date, duration
order by date asc, duration asc
limit 14;

-- Consulta 18
select account_id, `type`, sum(amount) as total_amount
from trans
where account_id = 396
group by `type`
