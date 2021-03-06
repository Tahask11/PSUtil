$defaultHelpPreference = [PSUtil.Configuration.HelpOption]::Window
if (-not (Test-PSFPowerShell -OperatingSystem Windows))
{
	$defaultHelpPreference = [PSUtil.Configuration.HelpOption]::Detailed
}
Set-PSFConfig -Module PSUtil -Name 'Help.Preference' -Value $defaultHelpPreference -Initialize -Validation "PSUGetHelpOptions" -Handler { } -Description "The way in which help is shown when pressing the 'F1' key. Can be any of the following options: Short | Detailed | Examples | Full | Window | Online"
Set-PSFConfig -Module PSUtil -Name 'History.Preference' -Value ([PSUtil.Configuration.HistoryOption]::Session) -Initialize -Validation "PSUBrowseHistoryOptions" -Handler { } -Description "Where the system will retrieve input history when pressing the 'F7' key. Can be any of the following options: Session | Global. Session includes history since the process was started, Global will try to look up the history from PSReadline log-file instead"
Set-PSFConfig -Module PSUtil -Name 'History.Limit' -Value (-1) -Initialize -Validation 'integer' -Handler { } -Description "The maximum number of history entries to show when pressing the 'F7' key. Negative numbers disable limit"
Set-PSFConfig -Module PSUtil -Name 'Expand.DefaultProperties' -Value "Definition", "Guid", "DisinguishedName", "FullName", "Name", "Length" -Initialize -Validation stringarray -Description "The properties Expand-PSUObject (exp) picks from by default"