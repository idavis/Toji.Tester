﻿# 
# Copyright (c) 2011-2012, Toji Project Contributors
# 
# Dual-licensed under the Apache License, Version 2.0, and the Microsoft Public License (Ms-PL).
# See the file LICENSE.txt for details.
# 

# This file is where you can override any settings specified in the other scripts.
# Remember that if you use these values in any of the property blocks that they
# will use the old values. Try to use these values only in your tasks.

properties {
  Write-Output "Loading override settings"
  $packages.name = "packages"
  $packages.dir = "$($base.dir)\$($packages.name)"
  if($solution.file -eq $null -or !(Test-Path $solution.file)) {
    $solution.file = "$($base.dir)\Toji.Tester.sln"
  }
  if($nuget.target -eq $null -or !(Test-Path $nuget.target)) {
    $nuget.target = "$($base.dir)\Toji.Tester.nuspec"
  }
}