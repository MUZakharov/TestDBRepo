CREATE FUNCTION "public"."new_customer"(firstname_in in character varying,lastname_in in character varying,address1_in in character varying,address2_in in character varying,city_in in character varying,state_in in character varying,zip_in in integer,country_in in character varying,region_in in integer,email_in in character varying,phone_in in character varying,creditcardtype_in in integer,creditcard_in in character varying,creditcardexpiration_in in character varying,username_in in character varying,password_in in character varying,age_in in integer,income_in in integer,gender_in in character varying,customerid_out out integer)
  RETURNS integer AS
$$
  DECLARE
    rows_returned INT;
  BEGIN
    SELECT COUNT(*) INTO rows_returned FROM CUSTOMERS WHERE USERNAME = username_in;
    IF rows_returned = 0 THEN
	    INSERT INTO CUSTOMERS
	      (
	      FIRSTNAME,
	      LASTNAME,
	      EMAIL,
	      PHONE,
	      USERNAME,
	      PASSWORD,
	      ADDRESS1,
	      ADDRESS2,
	      CITY,
	      STATE,
	      ZIP,
	      COUNTRY,
	      REGION,
	      CREDITCARDTYPE,
	      CREDITCARD,
	      CREDITCARDEXPIRATION,
	      AGE,
	      INCOME,
	      GENDER
	      )
	    VALUES
	      (
	      firstname_in,
	      lastname_in,
	      email_in,
	      phone_in,
	      username_in,
	      password_in,
	      address1_in,
	      address2_in,
	      city_in,
	      state_in,
	      zip_in,
	      country_in,
	      region_in,
	      creditcardtype_in,
	      creditcard_in,
	      creditcardexpiration_in,
	      age_in,
	      income_in,
	      gender_in
	      )
	     ;
    select currval(pg_get_serial_sequence('customers', 'customerid')) into customerid_out;
  ELSE 
  	customerid_out := 0;
  END IF;
END
$$
LANGUAGE PLPGSQL;