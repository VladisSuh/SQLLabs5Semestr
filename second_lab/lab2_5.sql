SELECT city, MAX (rating)
FROM public.customers
GROUP BY city;