SELECT cnum
FROM public.customers
WHERE snum IN (SELECT snum FROM public.salespeople WHERE sname IN ('Peel', 'Motika'));
