SELECT cname, rating
FROM public.customers
WHERE snum IN (SELECT snum 
			   FROM public.orders 
			   GROUP BY snum 
			   HAVING AVG(amt) > (SELECT AVG(amt) 
								  FROM public.orders));