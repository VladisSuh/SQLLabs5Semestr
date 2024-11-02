SELECT *
FROM public.orders o
WHERE o.amt > ALL (
SELECT o2.amt
FROM public.orders o2, public.customers c
	WHERE o2.cnum = c.cnum AND c.city = 'London'
);