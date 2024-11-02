SELECT snum, sname
FROM public.salespeople s
WHERE EXISTS 
	(SELECT cnum
	 FROM public.customers c
		WHERE c.rating = 300 AND c.snum = s.snum
);