DELETE FROM public.orders
WHERE cnum = (SELECT cnum 
			  	FROM public.customers 
			  		WHERE cname = 'Clemens');

INSERT INTO public.orders (onum, amt, odate, cnum, snum) VALUES
(3008, 4723.00, '10/05/1990', 2006, 1001),
(3011, 9891.88, '10/06/1990', 2006, 1001);
