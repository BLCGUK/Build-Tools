[CmdletBinding()]

param()

$ErrorActionPreference = "Stop"

Write-Verbose 'Entering powerappshttpcall.ps1'

#Get Parameters
$customVisionEndPoint = -Name Get-VstsInput -Name cognitiveServicesEndPoint -Require

if (1 -eq 1) {
    'This number is  1'
  
    }  Else {
  
    'This number is  not 1'
  
  } 

Invoke-WebRequest -Uri "$customVisionEndPoint" -Method POST

Write-Verbose 'Leaving powerappshttpcall.ps1'
