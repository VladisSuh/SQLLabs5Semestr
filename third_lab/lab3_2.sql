SELECT 'For the city ', city, ' the highest rating is: ', MAX(rating)
FROM public.customers
GROUP BY city;