SELECT cname, sname, comm
FROM public.customers, public.salespeople
WHERE Salespeople.snum = Customers.snum AND comm > 0.12;