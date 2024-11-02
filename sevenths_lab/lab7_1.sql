SELECT cname, city, rating, 'Высокий рейтинг' AS rating_description
FROM public.customers
WHERE rating >= 200
UNION
SELECT cname, city, rating, 'Низкий рейтинг' AS rating_description
FROM public.customers
WHERE rating < 200;