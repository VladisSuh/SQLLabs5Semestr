SELECT Orders.onum, Customers.cname
FROM public.orders, public.customers
WHERE Customers.cnum = Orders.cnum;