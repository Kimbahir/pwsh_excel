# Convert to Excel Table

- [Convert to Excel Table](#convert-to-excel-table)
  - [Install guide](#install-guide)
  - [Running the script](#running-the-script)


## Install guide

First install the module required for the script to run

```powershell
 Install-Module -Name ImportExcel -Scope CurrentUser
```

## Running the script

Run the script with the filename as input, without the extension. It will assume the .csv and 
create an Excel file with the .xlsx extension.

```powershell
 .\ConvertCsvToExcel.ps1 -filename input
```
