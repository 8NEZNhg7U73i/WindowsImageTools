---
external help file: WindowsImageTools-help.xml
Module Name: WindowsImageTools
online version:
schema: 2.0.0
---

# Initialize-VHDPartition

## SYNOPSIS
Create VHD(X) with partitions needed to be bootable

## SYNTAX

```
Initialize-VHDPartition [-Path] <String> [-Size <uint64>] [-SystemSize <int32>] [-ReservedSize <Int32>]
 [-RecoverySize <int32>] [-Dynamic] [-DiskLayout] <string> [-DataFormat <string>] [-AllocationUnitSize <Int32>]
 [-PassThru] [-NoRecoveryTools] [-force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
This command will create a VHD or VHDX file. Supported layours are: BIOS, UEFI, Data, WindowsToGo or Empty Partition Table.
To avoid create a recovery partitions use -NoRecoveryTools

## EXAMPLES

### EXAMPLE 1
```
Initialize-VHDPartition d:\disks\disk001.vhdx -dynamic -size 30GB -DiskLayout BIOS
```
Create a new 30GB BIOS layout VHDX that is dynamic

### EXAMPLE 2
```
Initialize-VHDPartition d:\disks\disk001.vhdx -dynamic -size 40GB -DiskLayout UEFI -NoRecoveryTools
```
Create a new 40GB BIOS layout VHDX that is dynamic without Recovery

## PARAMETERS

### -Path
Path to the new VHDX file (Must end in .vhdx)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Size
Size in Bytes (Default 80GB)

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 85899345920
Accept pipeline input: False
Accept wildcard characters: False
```

### -SystemSize
System (boot loader) Partition Size (Default : 260MB)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReservedSize
MS Reserved Partition Size (Default : 128MB)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoverySize
Recovery Tools Partition Size (Default : 905MB)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Dynamic
Create Dynamic disk

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DiskLayout
Specifies whether to build the image for BIOS (MBR), UEFI (GPT), WindowsToGo (MBR), or Empty Partition Table (NULL).
Generation 1 VMs require BIOS (MBR) images.
Generation 2 VMs require UEFI (GPT) images.
Windows To Go images will boot in UEFI or BIOS.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Layout

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DataFormat
Format drive as NTFS or ReFS (Only applies when DiskLayout = Data)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: ReFS
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllocationUnitSize
Alocation Unit Size to format the primary partition

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -force
Force the overwrite of existing files

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
