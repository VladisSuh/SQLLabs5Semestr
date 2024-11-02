SELECT Customers.cnum, SUM (comm * amt)
FROM public.customers, public.salespeople, public.orders
WHERE Customers.rating > 100 AND Salespeople.snum = Customers.snum
GROUP BY Customers.cnum;