[# Project: Account History

## Description of Project
We need a PHP solution to parse this HTML file uploaded by our family members. Each file will follow the same format, but the number of records inside may vary. Parsed data will be saved into a PostgreSQL database.

## Requirements
* validate file size
* validate by HTML MIME type
* temporary storage can be used but must be terminated after successful storage
* delivered file needs to independently function without the assistance of frameworks
* vanilla PHP is the only acceptable approach
* no frameworks to be used (like Laravel or Slim)

We need to store all **Account History** records on our personal budget from month to month. We want to store them in a Postgres DB with the following column structure:

|Reference|Report Date|Furnisher|Account|Category|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Reference column value will vary per .HTML file VARCHAR(30)|Report Date column value will vary per .HTML file (TIMESTAMP)|Furnisher column value will vary per record VARCHAR(255)|Category column value will always be ‘000’ for now  VARCHAR(3)|Account column value will vary per record VARCHAR(255)|ChesterPA column value will vary per record and be of data type BYTEA|AllenTX column value will vary per record and be of data type BYTEA|AtlantaGA column value will vary per record and be of data type BYTEA|

* From month to month we will not know how many inquiry records we'll have. Could be 1. Could 30. Could be 0.
* If 0, no record should be created. If ≤1, then create the corresponding record(s) in the DB.

*must always be present

**may sometimes be blank

***postgres db available upon request

## Screenshot of Data Table in HTML
![Table Appears in HTML](file%20to%20be%20parsed%20-%20payment%20history.png?raw=true "Table Appears in HTML")

## Data Once Inputed to Postgres
|Reference|Report Date|Furnisher|Account|Category|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Account #:|75025983901377****11|7502598377****11|75025983901377****11|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Account Type:|Revolving|Revolving|Revolving|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Account Type - Detail:|Charge account|Charge account|Charge account|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Bureau Code:|Individual|Individual|Individual|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Account Status:|Open|Open|Open|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Monthly Payment:|$49.00|$49.00|$49.00|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Date Opened:|02/03/2023|02/01/2023|02/01/2023|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Balance:|$191.00|$241.00|$191.00|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|No. of Months (terms):|0|0|0|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|High Credit:|$534.00|$534.00|$0.00|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Credit Limit:|$400.00|$400.00|$400.00|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Past Due:|$0.00|$0.00|$0.00|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Payment Status:|Current|Current|Current|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Last Reported:|04/21/2024|05/22/2024|04/01/2024|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Comments:|-|-|Charge Amount in H/C column is credit limit|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Date Last Active:|04/21/2024|10/01/2023|04/01/2024|
|BR54898847|05/23/2024|AZ/ SYNCB/CCDSTR|000|Date of Last Payment:|04/21/2024|04/21/2024|04/01/2024|

## Screenshot of Reference Table
![Table Appears in HTML](paymenthistory_reference.png?raw=true "Table Appears in HTML")

## Group Selector
`#ctrlCreditReport > chesterpa-report > div.ng-binding.ng-scope > div:nth-child(12) > div:nth-child(3) > address-history > div`

## First Object Selector
`#ctrlCreditReport > chesterpa-report > div.ng-binding.ng-scope > div:nth-child(12) > div:nth-child(3) > address-history > div > ng-repeat:nth-child(1)`
](https://github.com/plentycornucopia/project_paymenthistory)