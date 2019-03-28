You can perform an incremental backup of your DB instance using the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_database_incremental.

For more information about incremental backups, see Incremental Backups in the Oracle documentation.

This procedure uses the following common parameters for RMAN tasks:

p_owner

p_directory_name

p_label

p_parallel

p_section_size_mb

p_include_archived_logs

p_include_controlfile

p_optimize

p_compress

p_rman_to_dbms_output

For more information, see Common Parameters for RMAN Procedures.

This procedure is supported for the following Amazon RDS for Oracle DB engine versions:

11.2.0.4.v19 or higher 11.2 versions

12.1.0.2.v15 or higher 12.1 versions

12.2.0.1.ru-2019-01.rur-2019-01.r1 or higher 12.2 versions

This procedure also uses the following additional parameter.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_level

number

0, 1

0

Optional

Specify 0 to enable a full incremental backup.

Specify 1 to enable a non-cumulative incremental backup.

The following example performs an incremental backup of the DB instance using the specified values for the parameters.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_database_incremental(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_level               => 1,
        p_parallel            => 4,  
        p_section_size_mb     => 10,
        p_rman_to_dbms_output => FALSE);
END;
/
            