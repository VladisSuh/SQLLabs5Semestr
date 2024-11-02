SELECT s.snum, s.sname
FROM public.salespeople s
WHERE s.city IN (SELECT DISTINCT c.city FROM public.customers c)
AND NOT EXISTS (
SELECT 1
FROM public.customers c
WHERE c.snum = s.snum AND c.city = s.city
);