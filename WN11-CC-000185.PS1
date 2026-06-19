<#
.SYNOPSIS
    This PowerShell script configures the default Autorun behavior to prevent Autorun commands.

.NOTES
    Author          : Abdiaziz Isa
    LinkedIn        : linkedin.com/in/abdiaziz-isa-a5910315b
    GitHub          : github.com/abdiazizisa56
    Date Created    : 2026-05-30
    Last Modified   : 2026-05-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000185
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000185/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000185).ps1 
#>

# YOUR CODE GOES HERE

$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"

New-Item -Path $path -Force | Out-Null

New-ItemProperty `
  -Path $path `
  -Name "NoAutorun" `
  -PropertyType DWord `
  -Value 1 `
  -Force | Out-Null
