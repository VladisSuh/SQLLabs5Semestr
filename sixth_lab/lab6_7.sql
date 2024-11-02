SELECT s.snum, s.sname
FROM public.salespeople s
WHERE s.snum <> ANY (
    SELECT c.snum
    FROM public.customers c
    WHERE c.city = s.city
);
