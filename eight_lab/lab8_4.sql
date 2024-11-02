UPDATE public.orders
SET snum = (SELECT snum FROM public.salespeople WHERE sname = 'Motika')
WHERE snum = (SELECT snum FROM public.salespeople WHERE sname = 'Serres');

UPDATE public.orders
SET snum = (SELECT snum FROM public.salespeople WHERE sname = 'Serres')
WHERE onum in(3005, 3007, 3010);
