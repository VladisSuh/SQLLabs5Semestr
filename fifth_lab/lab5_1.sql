SELECT *
FROM public.orders
WHERE cnum = (SELECT cnum
	  		 FROM public.customers
	  		 WHERE cname = 'Cisneros');