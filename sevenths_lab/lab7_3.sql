SELECT snum
FROM public.salespeople
WHERE city = 'San Jose'

UNION

SELECT cnum
FROM public.customers
WHERE city = 'San Jose'

UNION ALL

SELECT onum
FROM public.orders
WHERE odate = '1990-03-10';
