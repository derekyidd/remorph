select year(o_orderdate), hash_agg(o_custkey, o_orderdate) from orders group by 1 order by 1;

-------------------+----------------------------------+
 YEAR(O_ORDERDATE) | HASH_AGG(O_CUSTKEY, O_ORDERDATE) |
-------------------+----------------------------------+
 1992              | 5686635209456450692              |
 1993              | -6250299655507324093             |
 1994              | 6630860688638434134              |
 1995              | 6010861038251393829              |
 1996              | -767358262659738284              |
 1997              | 6531729365592695532              |
 1998              | 2105989674377706522              |
-------------------+----------------------------------+

select year(o_orderdate), hash_agg(distinct o_custkey, o_orderdate) from orders group by 1 order by 1;

-------------------+-------------------------------------------+
 YEAR(O_ORDERDATE) | HASH_AGG(DISTINCT O_CUSTKEY, O_ORDERDATE) |
-------------------+-------------------------------------------+
 1992              | -8416988862307613925                      |
 1993              | 3646533426281691479                       |
 1994              | -7562910554240209297                      |
 1995              | 6413920023502140932                       |
 1996              | -3176203653000722750                      |
 1997              | 4811642075915950332                       |
 1998              | 1919999828838507836                       |
-------------------+-------------------------------------------+