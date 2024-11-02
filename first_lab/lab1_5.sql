SELECT onum
FROM public.orders
WHERE onum IS NULL or amt IS NULL;
