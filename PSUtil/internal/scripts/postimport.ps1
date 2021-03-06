# Add all things you want to run after importing the main code

# Load Tab Expansion
foreach ($file in (Get-ChildItem  "$script:ModuleRoot\internal\tepp" -Filter '*.tepp.ps1' -ErrorAction Ignore)) {
	. Import-ModuleFile -Path $file.FullName
}

# Load Tab Expansion Assignment
. Import-ModuleFile -Path "$script:ModuleRoot\internal\tepp\assignment.ps1"

# Load License
. Import-ModuleFile -Path "$script:ModuleRoot\internal\scripts\license.ps1"

# Load expansions for Expand-PSUObject
. Import-ModuleFile -Path "$script:ModuleRoot\internal\scripts\expandedObjects.ps1"

# Load aliases shipped with this module
. Import-ModuleFile -Path "$script:ModuleRoot\internal\scripts\aliases.ps1"

# Load keybindings shipped with this module
. Import-ModuleFile -Path "$script:ModuleRoot\internal\scripts\keybindings.ps1"

# Import aliases for Set-PSUPath
. Import-ModuleFile -Path "$script:ModuleRoot\internal\scripts\pathAliases.ps1"

# Convert-PSUObject Conversions
foreach ($file in (Get-ChildItem "$script:ModuleRoot\internal\conversions" -Filter '*.ps1'))
{
	. Import-ModuleFile -Path $file.FullName
}

# Load tasks
foreach ($file in (Get-ChildItem "$script:ModuleRoot\internal\tasks" -Filter '*.ps1'))
{
	. Import-ModuleFile -Path $file.FullName
}