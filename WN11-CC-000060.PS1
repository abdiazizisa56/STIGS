<#
.SYNOPSIS
    This PowerShell script blocks connections to non-domain networks when connected to a domain authenticated network.

.NOTES
    Author          : Abdiaziz Isa
    LinkedIn        : linkedin.com/in/abdiaziz-isa-a5910315b
    GitHub          : github.com/abdiazizisa56
    Date Created    : 2026-05-30
    Last Modified   : 2026-05-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000060
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000060/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000060).ps1 
#>

# YOUR CODE GOES HERE

$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy"

New-Item -Path $path -Force | Out-Null

New-ItemProperty `
  -Path $path `
  -Name "fBlockNonDomain" `
  -PropertyType DWord `
  -Value 1 `
  -Force | Out-Null
