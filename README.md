___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
# dataImport_SQL

___________________________________________________________________________________________________________________________________________________________________
GENERAL DESCRIPTION:
This is a basic SQL script to import data into a new database, and calculates values using simple arithmetic.

___________________________________________________________________________________________________________________________________________________________________
DATA DESCRIPTION:
In this example, data being used has already been download from the UC Irvine Machine Learning Repository (https://archive.ics.uci.edu/). 

A brief description of the data from the source repository states: 
"The dataset represents ten years (1999-2008) of clinical care at 130 US hospitals and integrated delivery networks. Each row concerns hospital records of patients diagnosed with diabetes, who underwent laboratory, medications, and stayed up to 14 days."

You can find a full description of the dataset and its variables here: https://archive.ics.uci.edu/dataset/296/diabetes+130-us+hospitals+for+years+1999-2008 

___________________________________________________________________________________________________________________________________________________________________
CODE DESCRIPTION:
This SQL code (dataImport_JWK.sql) imports the diabetes data (diabetic_data.csv), and calculates the percentage of patients who are of a particular sex (e.g. male or female).

___________________________________________________________________________________________________________________________________________________________________
RUNNING THE CODE:
1) Download the diabetes data (diabetic_data.csv) and the SQL script (dataImport_JWK.sql)

2) In a terminal, cd into the directory that now contains the data and the script

3) In dataImport_JWK.sql, change the file path on line 69 from "/home/jwkern/Downloads/" to point to your local directory containing diabetic_data.csv

4) Run the script by typing the following into the command line:

            mysql --local-infile=1 -u username -p password < dataImport_JWK.sql

(P.S. don't forget to change the username and password to your mySQL credentials)

4.1) If you wish to save the output in a .txt file, instead run the script as:
      
            mysql --local-infile=1 -u username -p password < dataImport_JWK.sql > output.txt


___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
