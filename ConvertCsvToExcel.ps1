param(
    [string]$filename
)

# Check if the CSV file exists
$csvPath = "$filename.csv"
if (-Not (Test-Path $csvPath)) {
    Write-Error "CSV file '$csvPath' not found."
    exit 1
}

# Import the CSV data
$csvData = Import-Csv -Path $csvPath

# Define the Excel file path
$excelPath = "$filename.xlsx"

# Export CSV data to Excel
$csvData | Export-Excel -Path $excelPath -AutoSize -TableName 'DataTable'

Write-Host "Excel file '$excelPath' has been created successfully."
