SELECT COUNT(onum), odate
FROM public.orders
GROUP BY odate
ORDER BY 1 DESC;