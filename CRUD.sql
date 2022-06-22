--CRUD operations

--Create customer with all fields
INSERT INTO customers (customer_id,customer_name,customer_email,customer_phone,customer_age,gdpr_status,customer_profile_status,date_profile_created,date_profile_deactivated,deactivation_reason,customer_notes)
VALUES (001,'Nick Clements','nick@email.com','+44765982735',34,TRUE,TRUE,CURRENT_TIMESTAMP,NULL,NULL,'Just an example text');

-- Create customer with all fields (trying it after mentor's review)
INSERT INTO customers (customer_id,customer_name,customer_email,customer_phone,customer_age,gdpr_status,customer_profile_status,date_profile_created,date_profile_deactivated,deactivation_reason,customer_notes)
VALUES (005,'Abby Simons','abbys@email.com','+44775982735',40,TRUE,TRUE,CURRENT_TIMESTAMP,NULL,NULL,'Just an example text for Abby');

--Create customer with the mandatory fields
INSERT INTO customers (customer_id,customer_name,customer_email,customer_phone,gdpr_status,customer_profile_status)
VALUES (002,'Federica Silvi','feds@email.com','+44745906545',FALSE,TRUE)

--Retrieving all customers
SELECT * FROM customers;

--Retrieve only customer’s name and phone
SELECT customer_name,customer_phone FROM customers;

--Retrieve only internal information about the user - GDPR status, profile status, date created, date deactivated, reason for deactivation and the notes taken of the user
SELECT gdpr_status,customer_profile_status,date_profile_created,date_profile_deactivated,deactivation_reason,customer_notes FROM customers;

--Retrieving all customer info by customer id
SELECT * FROM customers
WHERE customer_id=001;

--Updating customer by id--

--Change contact phone
UPDATE customers 
SET customer_phone ='+359883458655'
WHERE customer_id = 002;

--Deactivate account
UPDATE customers 
SET customer_profile_status = FALSE,date_profile_deactivated=now(),deactivation_reason='The customer is no more willing to share any personal info'
WHERE customer_id = 005;

--Activate account
UPDATE customers 
SET customer_profile_status = TRUE,date_profile_deactivated=NULL,deactivation_reason=NULL,customer_notes = 'The customer changed their mind'
WHERE customer_id = 005;

--Delete customer by id 
DELETE FROM customers
WHERE customer_id=001;