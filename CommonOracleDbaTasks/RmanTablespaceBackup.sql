Performing a Tablespace Backup
You can perform a DB instance tablespace using the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_tablespace.

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
This procedure also uses the following additional parameter.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_tablespace_name

varchar2

A valid tablespace name.

—

Required

The name of the tablespace to back up.

This procedure is supported for the following Amazon RDS for Oracle DB engine versions:

11.2.0.4.v19 or higher 11.2 versions

12.1.0.2.v15 or higher 12.1 versions

12.2.0.1.ru-2019-01.rur-2019-01.r1 or higher 12.2 versions

The following example performs a tablespace backup using the specified values for the parameters.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_database_incremental(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_tablespace          => MYTABLESPACE,
        p_parallel            => 4,  
        p_section_size_mb     => 10,
        p_rman_to_dbms_output => FALSE);
END;
/