call Raw_Material(); #### use for insert 
call Raw_Recieved();
call Raw_test();
call Medicine();
call Production_medicine();
call orders();
call orders_summary();
call Quality_test();
call full_status();
call dispatch_();
insert into raw_material values (1 ,"Maize Starch"),(2,"Povidone"),(3,"Magnesium Stearate"),(4,"Talc"),(5,"Microcrystalline Cellulose"), 
(6 ,"Lactose Monohydrate"),(7,"Colloidal Silicon Dioxide "),(8,"Sodium Chloride"),(9,"Potassium Chloride"),(10,"Sodium Citrate"),
(11 ,"Citric Acid"),(12,"Cetirizine Hydrochloride "),(13,"Lactose"),(14,"Corn Starch"),
(15,"Hydroxypropyl Methylcellulose (HPMC)"); 
 insert into raw_recieved values(1001,1,50,'25-03-01',123);
 insert into raw_recieved values(1002,5,100,'25-03-02',456),(1003,2,200,'25-03-02',123),
 (1004,4,200,'25-03-04',123),(1005,5,500,'25-03-06',456),(1006,6,200,'25-03-06',123),(1007,7,400,'25-03-07',456),
 (1008,8,300,'25-03-08',123),(1009,9,400,'25-03-08',456),(1010,10,500,'25-03-08',123),(1011,11,400,'25-03-09',456),
 (1012,12,300,'25-03-10',123),(1013,13,400,'25-03-10',456),(1014,14,500,'25-03-11',123),(1015,1,400,'25-03-11',456),
 (1016,3,400,'25-03-12',456);

select * from raw_pass_stock;
SELECT * FROM raw_fail_stock;
insert into raw_test values (501,1001,'25-03-02','25-03-02',"PASS");
insert into raw_test values (502,1002,'25-03-03','25-03-03',"PASS"),(503,1003,'25-03-03','25-03-03',"PASS"),
(504,1004,'25-03-05','25-03-05',"PASS"),(505,1005,'25-03-07','25-03-07',"PASS"),(506,1006,'25-03-07','25-03-07',"PASS"),
(507,1007,'25-03-08','25-03-08',"PASS"),(508,1008,'25-03-09','25-03-09',"FAIL"),(509,1009,'25-03-09','25-03-09',"PASS"),
(510,1010,'25-03-10','25-03-10',"PASS"),(511,1011,'25-03-10','25-03-10',"PASS"),(512,1012,'25-03-11','25-03-11',"PASS"),
(513,1013,'25-03-11','25-03-11',"FAIL"),(514,1014,'25-03-12','25-03-12',"PASS"),(515,1015,'25-03-12','25-03-12',"PASS"),
(516,1016,'25-03-13','25-03-13',"PASS");

INSERT INTO Medicine values(101 ,"Paracetamol Tablet"),(102 ,"Caffeine Tablet"),(103 ,"ORS Powder (Oral Rehydration Salts)"),
(104 ,"Cetrizine Tablet");
 ## values for production 
--  (10001,101,'25-03-12',100,"1,2,3,4,5","20,50,60,40,50"),
-- (10002,102,'25-03-13',200,"6,2,3,7","20,50,60,40"),(10003,103,'25-03-14',200,"8,9,10,11","50,50,60,40"),
-- (10004,104,'25-03-15',200,"12,13,3,14,15,4","50,50,60,40,50");
call Production_medicine(10004,104,'25-03-15',200,"12,13,3,14,15,4","50,50,60,40,50");
select * from production_medicine;
insert into quality_test values (50001,10001,"PASS",'25-03-13'),(50002,10002,"PASS",'25-03-14');
 ## error beacuse no production of there medicine 
-- (50003,10003,"PASS",'25-03-15'),(50004,10004,"PASS",'25-03-15'); 


call orders(201,101,50,"c001",'25-03-14');
-- values for order 
-- (202,101,50,"c001",'25-03-15'),(203,102,50,"c001",'25-03-15');


 -- 1. Paracetamol Tablet
-- Raw Materials:
-- Maize Starch 
-- Povidone 
-- Magnesium Stearate
-- Talc
-- Microcrystalline Cellulose 

-- ☕ 2. Caffeine Tablet 
-- Raw Materials:
-- Lactose Monohydrate
-- Povidone.
-- Magnesium Stearate 
-- Colloidal Silicon Dioxide 
-- 💧 3. ORS Powder (Oral Rehydration Salts)
-- Raw Materials:
-- Sodium Chloride
-- Potassium Chloride
-- Sodium Citrate
-- Citric Acid 

-- 🤧 4. Cetrizine Tablet
-- Raw Materials:
-- Cetirizine Hydrochloride
-- Lactose
-- Corn Starch
-- Magnesium Stearate
-- Hydroxypropyl Methylcellulose (HPMC)
-- Talc

