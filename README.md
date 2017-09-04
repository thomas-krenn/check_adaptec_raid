# check_adaptec_raid - Nagios/Icinga plugin to check Adaptec Raid Controller status

## General

* The Adaptec RAID Monitoring Plugin is a Nagios/Icinga to check the Adaptec RAID
  Controller for warnings or critical errors.
* It is written in Perl and uses the arcconf command line tool to interact with
  the RAID Controller.

## Current Version

* The current version of the check_adaptec_raid plugin is available at GitHub:
  https://github.com/thomas-krenn/check_adaptec_raid.git

## Further information

* A wiki article can be found at:
  https://www.thomas-krenn.com/de/wiki/Adaptec_RAID_Monitoring_Plugin or
  https://www.thomas-krenn.com/en/wiki/Adaptec_RAID_Monitoring_Plugin
* Windows user should read:
  https://www.thomas-krenn.com/de/wiki/Adaptec_RAID_Monitoring_Plugin_unter_Windows_Server_2012_einrichten

## Functionalities

* Controller Status
  * Temperature
  * Defunct drives
  * Failed/Degrade drives
* Logical Device Status
  * State
  * Failed Stripes
* Physical Device Status
  * State
  * SMART alert flag
  * SMART warnings
  * Drive Power State
  * Failed Segments
* If ZMM is present (unless disabled)
* ZMM (if available)
  * Backup Unit Status
  * Non-Volatile Storage Status
  * Supercap Status
  * Temperature
  * Voltage present
  * Health

## Used arcconf commands

* arcconf GETVERSION 1
* arcconf GETCONFIG 1 AD
* arcconf GETCONFIG 1 LD
* arcconf GETCONFIG 1 PD

## Installation Requirements

* libfile-which-perl
* arcconf

## Requirements for Icinga/Nagios

* On the system to be monitored:
  * check_adaotec_raid plugin
  * arcconf
  * sudoers entry for user nagios and arcconf
    (example: nagios ALL=(root) NOPASSWD:/sbin/arcconf)
* NRPE (optional): command definition
* On the Icinga-server:
  * command definition
  * service definition

## Parameter usage (example)
./check_adaptec_raid -Tw 40 -Tc 50 -LD 0,1 -PD 1 -z 0


## License

Copyright (C) 2013-2016 Thomas-Krenn.AG

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 3 of the License, or (at your option) any later version.
 
This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, see http://www.gnu.org/licenses/.
