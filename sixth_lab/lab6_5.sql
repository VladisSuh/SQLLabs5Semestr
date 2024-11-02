SELECT c.cnum, c.cname, c.rating
FROM public.customers c
WHERE c.rating >= ANY (
SELECT c2.rating
FROM public.customers c2
WHERE c2.cname = 'Serres'
);