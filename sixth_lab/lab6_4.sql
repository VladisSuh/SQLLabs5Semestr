SELECT c.cnum, c.cname, c.snum
FROM public.customers c
WHERE EXISTS (
SELECT 1
FROM public.orders o1
WHERE o1.cnum = c.cnum
AND EXISTS (
SELECT 1
FROM public.orders o2
WHERE o2.snum = o1.snum
AND o2.cnum != o1.cnum
)
);
