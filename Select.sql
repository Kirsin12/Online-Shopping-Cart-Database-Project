-- query the address, starttime and endtime of the servicepoints in the same city as userid 5   
SELECT streetaddr,starttime,endtime
FROM ServicePoint
WHERE ServicePoint.city IN (SELECT Address.city FROM Address WHERE userid<6);

-- query the information of laptops
SELECT *
FROM Product
WHERE type='headphone';

-- query the name and address of orders delivered on 2017-15-17
SELECT name, streetaddr, city
FROM Address
WHERE addrid IN (SELECT addrid FROM Deliver_To WHERE TimeDelivered = '2017-15-17');