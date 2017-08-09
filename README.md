# openmrs-to-cdc-access
This process consists of processing and converting the OpenMRS MySQL DB to the CDC ACCESS DB Model.

In this process it is necessary to consider and to follow the instruction given below:

# Step I

### Prerequisites
Install latest [esaudemetadata module](https://github.com/esaude/openmrs-module-esaudemetadata), the snapshot version has those changes.

Or (recommended for openmrs v1.9.2 implementations)

Provide the following global properties from the openmrs interface:

    1. Health Facility Code which uniquely identify the facility should be provided in the esaudemetadata.hfc global property - should be 5 digits and above.
    2. Date to based on when importing the data - Date when data should be fetched to provide it in esaudemetadata.dateToImportTo - should be in format yyyy-mm-dd
On the server that host openmrs, [install this script](https://github.com/esaude/openmrs-to-cdc-access/blob/master/schema_sp_export.sql), this will create necessary
database to export data to(export_db), necessary schema and the stored procedures that will handle the actual tasks. You can use source routine then point to the
location where the file to be loaded is located for example:
````bash
on your mysql terminal run 
source https://github.com/esaude/openmrs-to-cdc-access/blob/master/schema_sp_export.sql

````

If that is succeded, a database called export_db is created plus its associated procedures

For actual import, on the mysql terminal run

````bash
CALL call EXPORTDB();

````

This will take sometime and on success, export_db will be poppulated with data from openmrs database.

# Step II

[Full convert application](http://www.fullconvert.com/) is needed, apparently the available versions runs on windows OS.

[Follow the instructions appended in the pdf file at step 2](https://trello.com/c/iJwj3NXl)

The trial version tested against, lack some functionality that would enable removing of some columns before exporting to access. A full version maybe required for this
purpose.