-- Create materialized views
CREATE TABLE address WITH (
    KAFKA_TOPIC='address',
    PARTITIONS=1,
    VALUE_FORMAT='json') AS
  SELECT
    ADDRESS_ID,
    LATEST_BY_OFFSET(Addr_Country) as Addr_Country,
    LATEST_BY_OFFSET(Addr_Town) as Addr_Town,
    LATEST_BY_OFFSET(Record_Last_Update_Date) as Record_Last_Update_Date
  FROM fims_address
  GROUP BY ADDRESS_ID;

Create TABLE franchise WITH (
    KAFKA_TOPIC='franchise',
    PARTITIONS=1,
    VALUE_FORMAT='json') AS
  SELECT
    Franchise_ID,
    LATEST_BY_OFFSET(Name) as Name,
    LATEST_BY_OFFSET(Record_Last_Update_Date) as Record_Last_Update_Date
  FROM fims_franchise
  GROUP BY Franchise_ID;