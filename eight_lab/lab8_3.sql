UPDATE public.customers
SET rating = rating + 100
WHERE city = 'Rome';

UPDATE public.customers
SET rating = rating - 100
WHERE city = 'Rome';
