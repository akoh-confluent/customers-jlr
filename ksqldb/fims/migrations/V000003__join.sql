-- Create mapped address table
CREATE TABLE address_mapped WITH (
    kafka_topic='address_mapped',
    value_format='json',
    PARTITIONS=1) AS
  SELECT
    m.franchise_id as Franchise_ID,
    a.address_id as Address_ID,
    a.addr_country as Addr_Country,
    a.addr_town as Addr_Town,
    a.record_last_update_date as Record_Last_Update_Date
  FROM franchise_address_mapping m
  INNER JOIN  address a ON m.address_id=a.address_id;


-- Create joined franchise address table
CREATE TABLE franchise_address WITH (
    kafka_topic='franchise_address',
    value_format='json',
    PARTITIONS=1) AS
  SELECT
    f.franchise_id as Franchise_ID,
    f.name as Name,
    a.address_id as Address_ID,
    a.addr_country as Addr_Country,
    a.addr_town as Addr_Town
  FROM address_mapped a
  INNER JOIN franchise f ON f.franchise_id=a.franchise_id;
