<#
.SYNOPSIS
    This PowerShell script configures Internet Explorer to be disabled for Windows 11.

.NOTES
    Author          : Abdiaziz Isa
    LinkedIn        : linkedin.com/in/abdiaziz-isa-a5910315b
    GitHub          : github.com/abdiazizisa56
    Date Created    : 2026-05-30
    Last Modified   : 2026-05-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000391
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000391/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000391).ps1 
#>

# YOUR CODE GOES HERE

$path = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main"

New-Item -Path $path -Force | Out-Null

New-ItemProperty `
  -Path $path `
  -Name "NotifyDisableIEOptions" `
  -PropertyType DWord `
  -Value 0 `
  -Force | Out-Null
