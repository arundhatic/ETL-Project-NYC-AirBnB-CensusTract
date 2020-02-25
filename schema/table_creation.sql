CREATE TABLE  airbnb_data (
  id  int   NOT NULL,
  name TEXT,
  host_id  int   NOT NULL,
  host_name TEXT,
  neighbourhood_group TEXT,
  neighbourhood TEXT,
  latitude float,
  longitude float,
  room_type  TEXT,
  price  int   NOT NULL,
  censustract  BigInt  NOT NULL
);


CREATE TABLE Census_Data (
   CensusTract BigInt  NOT NULL,
   County VARCHAR(50) ,
   Borough VARCHAR(50) ,
   TotalPop Int ,
   Hispanic float ,
   White float,
   Black float,
   Native float,
   Asian float ,
   Income float,
   IncomePerCap float,
   Poverty float ,
   Employed int,
   Unemployment float
);