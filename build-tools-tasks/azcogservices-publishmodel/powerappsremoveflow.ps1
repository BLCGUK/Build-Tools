[CmdletBinding()]

param()

$ErrorActionPreference = "Stop"

Write-Verbose 'Entering powerappsremoveflow.ps1'

#Get Parameters
$flowid = Get-VstsInput -Name powerAutomateId -Require
$pass = Get-VstsInput -Name powerAppsPassword -Require
$user = Get-VstsInput -Name powerAppsUsername -Require

#Login to PowerApps
$powerappspw = ConvertTo-SecureString $pass -AsPlainText -Force
Add-PowerAppsAccount -Username $user -Password $powerappspw

#Return PowerAutomate Flows then iterate over
#Get-Flow
#ForEach-Object (Get-Flow) {Enable-Flow}

Remove-Flow -FlowName $flowid

Write-Verbose 'Leaving powerappsremoveflow.ps1'
