# Project: Payment History

## Description of Project
THIS MUST BE ADDED TO THE ACCOUNT HISTORY EFFORT. We need a PHP solution to parse this HTML file uploaded by our family members. Each file will follow the same format, but the number of records inside may vary. Parsed data will be saved into a PostgreSQL database.

## The Story of The Project
Currently the JSON for Payment History is being manual created. It's being contructed and serialized in Google Sheets but this is not sustainable. But here's a brief video on the current process. We now want this process from this project to generate and INSERT this JSON in the _accounthistory_ table while Account History records are being written.
[![Manual creation of JSON for Payment History](preparing%20payment%20history%20json.png)](https://github.com/user-attachments/assets/9b761fa6-a2e4-4532-bd63-37e40a4d69b8)

## Requirements
* validate file size
* validate by HTML MIME type
* temporary storage can be used but must be terminated after successful storage
* delivered file needs to independently function without the assistance of frameworks
* vanilla PHP is the only acceptable approach
* no frameworks to be used (like Laravel or Slim)

We need to store all **Payment History** records on our personal budget from month to month. We want to store them in a Postgres DB with the following column structure:

|Reference|Report Date|Furnisher|Account|Category|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Reference column value will vary per .HTML file VARCHAR(30)|Report Date column value will vary per .HTML file (TIMESTAMP)|Furnisher column value will vary per record VARCHAR(255)|Category column value will always be ‘000’ for now  VARCHAR(3)|Account column value will vary per record VARCHAR(255)|ChesterPA column value will vary per record and be of data type BYTEA|AllenTX column value will vary per record and be of data type BYTEA|AtlantaGA column value will vary per record and be of data type BYTEA|

* From month to month we will not know how many inquiry records we'll have. Could be 1. Could 30. Could be 0.
* If 0, no record should be created. If ≤1, then create the corresponding record(s) in the DB.

*must always be present

**may sometimes be blank

***postgres db available upon request

## Additional Q&A:
Q: So to understand more this project do you mean add a new table in the database just for Payment History or an additional row in your Account History table?
A: This new record would live in the same [a link]([https://github.com/user/repo/blob/branch/other_file.md](https://github.com/plentycornucopia/project_accounthistory/blob/main/README.md))
 table we created before. I actually don’t have a choice. This would be appended to that effort.

Q: What data type is needed?
A: The data type for the 3 columns is BYTEA which would work for JSON... not optimal of course but it’s our only option. Also because of how the data will come in from the .HTML it’ll be difficult to manage xREFs. Find out more in the video below.

## Screenshot of Data Table in HTML
![Table Appears in HTML](file%20to%20be%20parsed%20-%20payment%20history.png?raw=true "Table Appears in HTML")

## Screenshot of Reference Table
![Table Appears in HTML](accounthistory_reference.png?raw=true "Table Appears in HTML")

## Steps for selecting the relevant data from the .HTML document
- Walk down the DOM to `#ctrlCreditReport > chesterpa-report > div.ng-binding.ng-scope > div:nth-child(12)` where `#AccountHistory` is present as the first element
- This is the Account History element that holds tradelines `#ctrlCreditReport > chesterpa-report > div.ng-binding.ng-scope > div:nth-child(12) > div:nth-child(3) > address-history > div > ng-repeat:nth-child(1)`
- These tradelines hold a Two-Year payment history `#ctrlCreditReport > chesterpa-report > div.ng-binding.ng-scope > div:nth-child(12) > div:nth-child(3) > address-history > div > ng-repeat:nth-child(1) > ng-include > table > tbody > tr > td > table`
- The data table per tradeline record is held here `#ctrlCreditReport > chesterpa-report > div.ng-binding.ng-scope > div:nth-child(12) > div:nth-child(3) > address-history > div > ng-repeat:nth-child(1) > ng-include > table > tbody > tr > td > table`
- It's rows house the data columns "Month", "Year", "ChesterPA", "AllenTX", "AtlantaGA"
- We are to prepare a JSON array that captures the following: 

### Expected Write
[Download reference .SQL file](paymenthistory.sql)
