Common Parameters for RMAN Procedures
You can use procedures in the Amazon RDS package 

rdsadmin.rdsadmin_rman_util to 
perform tasks with RMAN. Several parameters are common to the procedures
in the package. The package has the following common parameters.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_owner

varchar2

A valid owner of the directory specified in p_directory_name.

—

Required

The owner of the directory to contain the backup files.

p_directory_name

varchar2

A valid database directory name.

–

Required

The name of the directory to contain the backup files.

p_label

varchar2

a-z, A-Z, 0-9, '_', '-', '.'

—

Optional

A unique string that is included in the backup file names.

Note

The limit is 30 characters.

p_compress

boolean

TRUE, FALSE

FALSE

Optional

Specify TRUE to enable BASIC backup compression.

Specify FALSE to disable BASIC backup compression.

p_include_archive_logs

boolean

TRUE, FALSE

FALSE

Optional

Specify TRUE to include archived redo logs in the backup.

Specify FALSE to exclude archived redo logs from the backup.

If you include archived redo logs in the backup, set retention to one hour or greater using the rdsadmin.rdsadmin_util.set_configuration procedure. Also, call the rdsadmin.rdsadmin_rman_util.crosscheck_archivelog procedure immediately before executing the backup. Otherwise, the backup might fail due to missing archived redo logs that have been deleted by Amazon RDS management procedures.

p_include_controlfile

boolean

TRUE, FALSE

FALSE

Optional

Specify TRUE to include the control file in the backup.

Specify FALSE to exclude the control file from the backup.

p_optimize

boolean

TRUE, FALSE

TRUE

Optional

Specify TRUE to enable backup optimization, if archived redo logs are included, to reduce backup size.

Specify FALSE to disable backup optimization.

p_parallel

number

A valid integer between 1 and 254 for Oracle Database Enterprise Edition (EE)

1 for other Oracle Database editions

1

Optional

Number of channels.

p_rman_to_dbms_output

boolean

TRUE, FALSE

FALSE

Optional

When TRUE, the RMAN output is sent to the DBMS_OUTPUT package in addition to a file in the BDUMP directory. When using SQL*Plus, execute SET SERVEROUTPUT ON to see the output.

When FALSE, the RMAN output is only sent to a file in the BDUMP directory.

p_section_size_mb

number

A valid integer

NULL

Optional

The section size in megabytes (MB).

Validates in parallel by dividing each file into the specified section size.

When NULL, the parameter is ignored.

p_validation_type

varchar2

'PHYSICAL', 'PHYSICAL+LOGICAL'

'PHYSICAL'

Optional

The level of corruption detection.

Specify 'PHYSICAL' to check for physical corruption. An example of physical corruption is a block with a mismatch in the header and footer.

Specify 'PHYSICAL+LOGICAL' to check for logical inconsistencies in addition to physical corruption. An example of logical corruption is a corrupt block.

