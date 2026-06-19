#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Abdiaziz Isa
    LinkedIn        : linkedin.com/in/abdiaziz-isa-a5910315b
    GitHub          : github.com/abdiazizisa56
    Date Created    : 2026-05-30
    Last Modified   : 2026-05-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500 
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-AU-000500/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# YOUR CODE GOES HERE


$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"

New-Item -Path $path -Force | Out-Null

New-ItemProperty `
  -Path $path `
  -Name "MaxSize" `
  -PropertyType DWord `
  -Value 0x00008000 `
  -Force | Out-Null
