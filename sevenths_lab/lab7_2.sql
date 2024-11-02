SELECT snum, sname, city
FROM public.salespeople 
WHERE snum IN (
  SELECT snum
  FROM public.orders
  GROUP BY snum
  HAVING COUNT(*) > 1
)

UNION

SELECT cnum, cname, city
FROM public.customers 
WHERE cnum IN (
  SELECT cnum
  FROM public.orders
  GROUP BY cnum
  HAVING COUNT(*) > 1
)
