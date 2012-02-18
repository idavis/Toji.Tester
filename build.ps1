﻿param(
  [Parameter(Position=0,Mandatory=0)]
  [string]$buildFile = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\build\build.ps1",
  [Parameter(Position=1,Mandatory=0)]
  [string[]]$taskList = @(),
  [Parameter(Position=2,Mandatory=0)]
  [string]$framework = '3.5',
  [Parameter(Position=3,Mandatory=0)]
  [switch]$docs = $false,
  [Parameter(Position=4,Mandatory=0)]
  [System.Collections.Hashtable]$parameters = @{},
  [Parameter(Position=5, Mandatory=0)]
  [System.Collections.Hashtable]$properties = @{}
)
write-host $buildFile
$scriptPath = (Split-Path -parent $MyInvocation.MyCommand.Definition)
$buildPath = (Resolve-Path $scriptPath\build)

. $buildPath\bootstrap.ps1 $buildPath
$psakeModule = @(Get-ChildItem $scriptPath\* -recurse -include psake.ps1)[0].FullName
invoke-psake $buildFile $taskList $framework $docs $parameters $properties
write-host "exit: $lastexitcode"
[Environment]::Exit($lastexitcode)
#exit $lastexitcode