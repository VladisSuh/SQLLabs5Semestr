CREATE TABLE public.Multicust (
    snum INT PRIMARY KEY,
    sname VARCHAR(255),
    city VARCHAR(255),
    comm NUMERIC
);

INSERT INTO public.Multicust (snum, sname, city, comm)
SELECT snum, sname, city, comm
FROM public.salespeople
WHERE snum IN (
    SELECT snum
    FROM public.orders
    GROUP BY snum
    HAVING COUNT(DISTINCT cnum) > 1
);

DELETE FROM public.Multicust;

SELECT *
FROM public.Multicust;