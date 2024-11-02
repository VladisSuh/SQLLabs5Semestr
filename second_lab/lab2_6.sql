SELECT odate, COUNT (DISTINCT cnum)
FROM public.orders
GROUP BY odate
ORDER BY odate;