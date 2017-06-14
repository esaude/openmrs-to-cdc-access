# openmrs-to-cdc-access
This process consists of processing and converting the OpenMRS MySQL DB to the CDC ACCESS DB Model.

In this process it is necessary to consider and to follow the instruction given below:

Step I
Provide the following global properties from the openmrs interface:

    1. Health Facility Code which uniquely identify the facility should be provided in the esaudemetadata.hfc global property.
    2. Date to based on when importing the data - Date when data should be fetched to provide it in esaudemedata.hfc.date
