﻿#
# Module manifest for module 'WindowsImageTools'
#
# Generated by: David Jones
#
# Generated on: 8/18/2015
#

@{

# Script module or binary module file associated with this manifest.
RootModule = '.\WindowsImageTools.psm1'

# Version number of this module.
ModuleVersion = '1.0.18'

# ID used to uniquely identify this module
GUID = '6210674e-8cfa-4f61-a2fb-c54fd7ffcba1'

# Author of this module
Author = 'David Jones'

# Company or vendor of this module
CompanyName = 'BladeFireLight'

# Copyright statement for this module
Copyright = '2017'

# Description of the functionality provided by this module
Description = 'Tools for creating bootable phisical/virtual disks from an ISO or WIM'

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @('storage')

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = 'Convert-Wim2VHD',
                    'Initialize-VHDPartition',
                    'Initialize-DiskPartition',
                    'Set-VHDPartition',
                    'Set-DiskPartition',
                    'New-UnattendXml', 
                    'New-WindowsImageToolsExample', 
                    'Set-UpdateConfig', 
                    'Get-UpdateConfig', 
                    'Add-UpdateImage',
                    'Update-WindowsImageWMF',
                    'Invoke-WindowsImageUpdate',
                    'Invoke-CreateVmRunAndWait',
                    'Mount-VhdAndRunBlock',
                    'Get-VhdPartitionStyle',
                    'Install-WindowsFromWim'

# Cmdlets to export from this module
# CmdletsToExport = '*'

# Variables to export from this module
# VariablesToExport = '*'

# Aliases to export from this module
# AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('WIM', 'VHDX', 'Install Windows')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/BladeFireLight/WindowsImageTools/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/BladeFireLight/WindowsImageTools'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'Added *-Disk* functions for phisical deployment'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

