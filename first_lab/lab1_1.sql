SELECT onum
FROM public.orders
WHERE odate IN ('1990-03-10', '1990-04-10');

SELECT onum
FROM public.orders
WHERE odate BETWEEN '1990-03-10' and '1990-04-10';