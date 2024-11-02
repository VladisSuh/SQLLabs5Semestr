UPDATE public.salespeople
SET comm = comm * 1.2
WHERE snum IN (
SELECT snum 
FROM public.orders
GROUP BY snum
	HAVING SUM(amt) > 3000
);

UPDATE public.salespeople
SET comm = comm / 1.2
WHERE snum IN (
SELECT snum 
FROM public.orders
GROUP BY snum
	HAVING SUM(amt) > 3000
);
