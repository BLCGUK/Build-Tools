[CmdletBinding()]

param()

$ErrorActionPreference = "Stop"

Write-Verbose 'Entering powerappshttpcall.ps1'

#Get Parameters
$customVisionEndPoint = -Name Get-VstsInput -Name cognitiveServicesEndPoint -Require

Invoke-WebRequest -Uri "$customVisionEndPoint" -Method POST

Write-Verbose 'Leaving powerappshttpcall.ps1'
