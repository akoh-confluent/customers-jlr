-- Create fims_address stream
CREATE OR REPLACE STREAM fims_address (
    Address_ID VARCHAR KEY,
    Addr_Country VARCHAR,
    Addr_Town VARCHAR,
    Record_Last_Update_Date VARCHAR
  ) WITH (
    KAFKA_TOPIC='fims_address',
    PARTITIONS=1,
    VALUE_FORMAT='json',
    TIMESTAMP='Record_Last_Update_Date',
    TIMESTAMP_FORMAT='yyyy-MM-dd''T''HH:mm:ssX'
  );

-- Create fims_franchise stream
CREATE OR REPLACE STREAM fims_franchise (
    Franchise_ID VARCHAR KEY,
    Name VARCHAR,
    Record_Last_Update_Date VARCHAR
  )  WITH (
    KAFKA_TOPIC='fims_franchise',
    PARTITIONS=1,
    VALUE_FORMAT='json',
    TIMESTAMP='Record_Last_Update_Date',
    TIMESTAMP_FORMAT='yyyy-MM-dd''T''HH:mm:ssX'
  );

-- Create franchise/address mapping table
CREATE OR REPLACE TABLE franchise_address_mapping (
    Franchise_ID VARCHAR PRIMARY KEY,
    Address_ID VARCHAR
  ) WITH (
    KAFKA_TOPIC='franchise_address_mapping',
    PARTITIONS=1,
    VALUE_FORMAT='json'
  );