use pubs

-- a)
-- select * from authors

-- b)
-- select au_fname, au_lname, authors.phone from authors

-- c)
/*
select A.au_fname, A.au_lname, A.phone 
from authors as A
ORDER BY A.au_fname, A.au_lname
*/

-- d)
/*
select A.au_fname as first_name, A.au_lname as last_name, A.phone as telephone
from authors as A
ORDER BY first_name, last_name
*/

-- e)
/*
select A.au_fname as first_name, A.au_lname as last_name, A.phone as telephone
from authors as A
where A.state = 'CA' and A.au_lname != 'Ringer'
ORDER BY first_name, last_name
*/

-- f)
/*
SELECT publishers.pub_name
FROM publishers
WHERE publishers.pub_name LIKE '%Bo%';
*/

-- g)
/*
select P.pub_name, T.title, T.type
from publishers as P, titles as T
where T.type = 'business'
*/

-- h)
/*
SELECT pub_name, SUM(sales.qty) AS total_sales 
FROM ((sales INNER JOIN titles ON sales.title_id=titles.title_id) INNER JOIN publishers ON publishers.pub_id=titles.pub_id)
GROUP BY pub_name;
*/

-- i)
/*
SELECT pub_name, SUM(sales.qty) AS total_sales, title
FROM ((sales INNER JOIN titles ON sales.title_id=titles.title_id) INNER JOIN publishers ON publishers.pub_id=titles.pub_id)
GROUP BY pub_name, title;
*/

-- j)
/*
SELECT titles.title, stores.stor_id, stores.stor_name
FROM ((titles JOIN sales ON titles.title_id=sales.title_id) JOIN stores ON sales.stor_id=stores.stor_id)
WHERE stor_name = 'Bookbeat'
*/

-- k)
/*
SELECT au_fname, au_lname, COUNT(DISTINCT T.type) AS Counter
FROM ((authors AS A 
      JOIN titleauthor AS TA ON A.au_id = TA.au_id)
      JOIN titles AS T ON TA.title_id = T.title_id)
GROUP BY au_fname, au_lname
HAVING COUNT(DISTINCT T.type) > 1;
*/

-- l)
/*
SELECT T.pub_id, type, COUNT(S.qty) AS sales_amount, AVG(price) AS avg_price
FROM ((publishers as P JOIN titles as T ON T.pub_id=P.pub_id) JOIN sales as S ON T.title_id=S.title_id)
GROUP BY T.pub_id, type
*/

-- m)
/*
SELECT T.type
from titles as T
group by T.type
Having MAX(T.advance)> 1.5*AVG(T.advance)
*/

-- n)
/*
SELECT T.title, A.au_fname, A.au_lname, royaltyper * (ytd_sales*price) * royalty / 10000 AS earnings
FROM ((authors AS A 
      JOIN titleauthor AS TA ON A.au_id = TA.au_id)
      JOIN titles AS T ON TA.title_id = T.title_id)
ORDER BY T.title
*/
-- o)
/*
SELECT title, ytd_sales, ytd_sales*price AS facturacao, 
	ytd_sales*price*royalty/100 AS auth_revenue, 
	ytd_sales*price-ytd_sales*price*royalty/100 AS publisher_revenue
FROM titles
ORDER BY title
*/

-- p)
/*
SELECT title, au_fname, au_lname, 
	ytd_sales*price*royalty/100 as auths_revenue,
	price*ytd_sales-price*ytd_sales*royalty/100 AS publisher_revenue
FROM ((titles as T JOIN titleauthor as TA ON T.title_id=TA.title_id)
		JOIN authors as A ON A.au_id=TA.au_id)
*/
-- q)
/*
SELECT stor_id
FROM sales as S
GROUP BY stor_id
HAVING COUNT(DISTINCT(S.title_id)) >= (SELECT COUNT(T.title_id) FROM titles as T);
*/

-- r)
/*
SELECT ST.stor_id, ST.stor_name, SUM(S.qty) AS total_sales
FROM sales AS S 
JOIN stores AS ST ON S.stor_id = ST.stor_id
GROUP BY ST.stor_name, ST.stor_id
HAVING SUM(S.qty) > (
    SELECT AVG(total_sales) 
    FROM (
        SELECT SUM(qty) AS total_sales 
        FROM sales 
        GROUP BY stor_id
    ) AS store_sales
);
*/

-- s)
/*
SELECT title 
FROM titles
WHERE title_id NOT IN
	(SELECT title_id FROM sales
		FULL OUTER JOIN stores
		ON sales.stor_id=stores.stor_id
		WHERE stor_name='Bookbeat');
*/
-- t)
/*
(SELECT pub_name, stor_name
FROM stores, publishers )
EXCEPT
-- Os que venderam dessa publisher
	(SELECT pub_name, stor_name
	FROM publishers JOIN 
		(SELECT titles.pub_id AS ppid, sales.stor_id, stor_name
		FROM titles JOIN sales
		ON titles.title_id=sales.title_id
		JOIN stores
		ON sales.stor_id=stores.stor_id) AS T --subquery T
	ON pub_id=ppid);
*/