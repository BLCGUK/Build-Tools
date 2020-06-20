[CmdletBinding()]

param()

$ErrorActionPreference = "Stop"

Write-Verbose 'Entering powerappshttpcall.ps1'

#Get Parameters
$httpEndPoint = -Name httpEndPoint -Require

Invoke-WebRequest -Uri "$httpEndPoint" -Method POST

Invoke-WebRequest -UseBasicParsing http://example.com/service -ContentType "application/json" -Training-Key "$httpEndPoint" -Method POST -Body "{ 'ItemID':3661515, 'Name':'test'}"


Write-Verbose 'Leaving powerappshttpcall.ps1'
