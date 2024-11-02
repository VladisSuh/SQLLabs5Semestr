SELECT onum, sname, cname
FROM public.orders, public.salespeople, public.customers
WHERE Salespeople.snum = Orders.snum AND Customers.cnum = Orders.cnum;