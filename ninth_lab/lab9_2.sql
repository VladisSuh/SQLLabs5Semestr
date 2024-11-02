DELETE FROM public.customers
WHERE NOT EXISTS (
SELECT 1
FROM public.orders
WHERE public.orders.cnum = public.customers.cnum
);

INSERT INTO public.customers(cnum, cname, city, rating, snum) VALUES
(2006, 'Clemens', 'London', 100, 1001);
