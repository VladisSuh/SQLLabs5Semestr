SELECT snum, sname
FROM public.salespeople
WHERE snum IN
	(SELECT snum FROM public.orders WHERE city IN
		(SELECT city FROM public.customers WHERE rating = 300)
	)
UNION
SELECT snum, sname
FROM public.salespeople
WHERE snum IN
	(SELECT snum FROM public.customers WHERE rating = 300);