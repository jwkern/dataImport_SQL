/*______________________________________________________________________________
CODE DESCRIPTION: 

This SQL code (dataImport_JWK.sql) imports the diabetes data (diabetic_data.csv), 
and calculates the percentage of patients who are of a particular sex (e.g. male 
or female). It then exports the data for the two sexes into distinct .csv output 
files.

Written by: Joshua W. Kern
Date: 02/19/24 									
________________________________________________________________________________*/

/*______________________________________________________________________________
Step 0: Initialize the database
________________________________________________________________________________*/
DROP DATABASE IF EXISTS Healthcare;
CREATE DATABASE Healthcare;
USE Healthcare;



/*______________________________________________________________________________
Step 1: Initialize the data table
________________________________________________________________________________*/
CREATE TABLE diabetic_data ( 
	encounter_id INT, 
	patient_nbr INT,
	race TEXT, 
	gender TEXT, 
	age TEXT, 
	weight TEXT,
	admission_type_id TEXT, 
	discharge_disponsition_id TEXT, 
	admission_source_id TEXT, 
	time_in TEXT, 
	payer_code TEXT, 
	med_spec TEXT, 
	num_lab_prodecures INT, 
	num_procedures INT, 
	var01 TEXT, 
	var02 TEXT, 
	var03 TEXT, 
	var04 TEXT, 
	var05 TEXT, 
	var06 TEXT, 
	var07 TEXT, 
	var08 TEXT, 
	var09 TEXT, 
	var10 TEXT, 
	var11 TEXT, 
	var12 TEXT, 
	var13 TEXT, 
	var14 TEXT, 
	var15 TEXT, 
	var16 TEXT, 
	var17 TEXT, 
	var18 TEXT, 
	var19 TEXT, 
	var20 TEXT, 
	var21 TEXT, 
	var22 TEXT, 
	var23 TEXT, 
	var24 TEXT, 
	var25 TEXT,
	var26 TEXT, 
	var27 TEXT, 
	var28 TEXT, 
	var29 TEXT, 
	var30 TEXT, 
	var31 TEXT, 
	var32 TEXT, 
	var33 TEXT, 
	var34 TEXT, 
	var35 TEXT,
	var36 TEXT
);


/*______________________________________________________________________________
Step 2: Load the data from the .csv into the initialized data table
________________________________________________________________________________*/
LOAD DATA LOCAL INFILE '/home/jwkern/Downloads/diabetic_data.csv' REPLACE INTO TABLE diabetic_data  FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 rows;




/*______________________________________________________________________________
Step 3: Select subset of data and calculate properties
________________________________________________________________________________*/
SET @maleCount = (SELECT COUNT(*) FROM diabetic_data WHERE gender = 'Male');
SET @femaleCount = (SELECT COUNT(*) FROM diabetic_data WHERE gender = 'Female');

SET @totalCount = @maleCount + @femaleCount;
SET @malePercent = @maleCount/@totalCount*100.0;
SET @femalePercent = @femaleCount/@totalCount*100.0;


SELECT ROUND(@malePercent,2);
SELECT ROUND(@femalePercent,2);









/*______________________________________________________________________________
________________________________________________________________________________

--------------------------------------------------------------------------------	
-----------------------------------THE END--------------------------------------
--------------------------------------------------------------------------------
________________________________________________________________________________
________________________________________________________________________________*/
