<#
.SYNOPSIS
    This PowerShell script requires a password when resuming from sleep while plugged in.

.NOTES
    Author          : Abdiaziz Isa
    LinkedIn        : linkedin.com/in/abdiaziz-isa-a5910315b
    GitHub          : github.com/abdiazizisa56
    Date Created    : 2026-05-30
    Last Modified   : 2026-05-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000150
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000150/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000150).ps1 
#>

# YOUR CODE GOES HERE

$path = "HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51"

New-Item -Path $path -Force | Out-Null

New-ItemProperty `
  -Path $path `
  -Name "ACSettingIndex" `
  -PropertyType DWord `
  -Value 1 `
  -Force | Out-Null

powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_NONE CONSOLELOCK 1
powercfg /SETACTIVE SCHEME_CURRENT
