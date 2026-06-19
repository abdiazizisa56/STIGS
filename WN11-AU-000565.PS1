#
.SYNOPSIS
    This PowerShell script configures auditing of Other Logon/Logoff Events failures.

.NOTES
    Author          : Abdiaziz Isa
    LinkedIn        : linkedin.com/in/abdiaziz-isa-a5910315b
    GitHub          : github.com/abdiazizisa56
    Date Created    : 2026-05-30
    Last Modified   : 2026-05-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000565
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-AU-000565/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-AU-000565).ps1 
#>

# YOUR CODE GOES HERE

auditpol /set /subcategory:"Other Logon/Logoff Events" /failure:enable
