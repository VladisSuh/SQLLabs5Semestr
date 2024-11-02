SELECT snum, sname
FROM public.salespeople s
WHERE EXISTS (
SELECT 1
FROM public.customers c
WHERE c.city = s.city AND c.snum = s.snum
AND NOT EXISTS (
SELECT 1
FROM public.orders o
WHERE o.cnum = c.cnum AND o.snum = s.snum
)
);