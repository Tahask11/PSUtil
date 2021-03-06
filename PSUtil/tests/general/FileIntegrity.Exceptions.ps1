# List of forbidden commands
$global:BannedCommands = @(
	'Write-Host',
	'Write-Verbose',
	'Write-Warning',
	'Write-Error',
	'Write-Output',
	'Write-Information',
	'Write-Debug'
)

<#
	Contains list of exceptions for banned cmdlets.
	Insert the file names of files that may contain them.
	
	Example:
	"Write-Host"  = @('Write-PSFHostColor.ps1','Write-PSFMessage.ps1')
#>
$global:MayContainCommand = @{
	"Write-Host"  = @('fred.prompt.ps1', "pretty.prompt.ps1", "hyper.prompt.ps1", "git.prompt.ps1")
	"Write-Verbose" = @()
	"Write-Warning" = @()
	"Write-Error"  = @()
	"Write-Output" = @('Out-PSUVariable.ps1')
	"Write-Information" = @()
	"Write-Debug" = @()
}