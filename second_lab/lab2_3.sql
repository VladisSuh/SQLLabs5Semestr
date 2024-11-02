SELECT snum, MIN (amt)
FROM public.orders
GROUP BY snum;