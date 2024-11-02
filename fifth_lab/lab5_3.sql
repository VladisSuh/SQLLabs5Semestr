SELECT s.snum, s.sname, 
(SELECT SUM(o1.amt) 
 	FROM public.orders o1 
 		WHERE o1.snum = s.snum) as total_sales
FROM public.salespeople s
WHERE (SELECT SUM(o2.amt) 
	   	FROM public.orders o2 
	   		WHERE o2.snum = s.snum) > (SELECT MAX(amt) 
									   	FROM public.orders)
ORDER by total_sales;