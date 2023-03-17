INSERT INTO fims_address (Address_ID, Addr_Country, Addr_Town, Record_Last_Update_Date) VALUES ('1', 'UK', 'Oxford', '2023-03-20T12:05:00Z');
INSERT INTO fims_address (Address_ID, Addr_Country, Addr_Town, Record_Last_Update_Date) VALUES ('2', 'US', 'New York', '2023-03-20T12:06:00Z');
INSERT INTO fims_address (Address_ID, Addr_Country, Addr_Town, Record_Last_Update_Date) VALUES ('1', Null, 'Cambridge', '2023-03-20T12:10:00Z');

INSERT INTO franchise_address_mapping (Address_ID, Franchise_ID) VALUES ('1', 'F1');
INSERT INTO franchise_address_mapping (Address_ID, Franchise_ID) VALUES ('2', 'F2');

INSERT INTO fims_franchise (Franchise_ID, Name, Record_Last_Update_Date) VALUES ('F1', 'Foo Auto', '2023-03-20T12:04:00Z');
INSERT INTO fims_franchise (Franchise_ID, Name, Record_Last_Update_Date) VALUES ('F2', 'Awesome Car', '2023-03-20T12:05:00Z');

