SELECT c.cname, c.cnum
FROM public.customers c
WHERE c.rating = (SELECT MAX(c2.rating) 
				  	FROM public.customers c2
				 		WHERE c2.city = c.city)
ORDER BY c.cname;