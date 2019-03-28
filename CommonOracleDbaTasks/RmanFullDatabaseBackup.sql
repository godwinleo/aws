You can perform a backup of all blocks of data files included in the backup using Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_database_full.

This procedure uses the following common parameters for RMAN tasks:

p_owner
p_directory_name
p_label
p_parallel
p_section_size_mb
p_include_archived_logs
p_optimize
p_compress
p_rman_to_dbms_output
For more information, see Common Parameters for RMAN Procedures.
This procedure is supported for the following Amazon RDS for Oracle DB engine versions:
11.2.0.4.v19 or higher 11.2 versions
12.1.0.2.v15 or higher 12.1 versions
12.2.0.1.ru-2019-01.rur-2019-01.r1 or higher 12.2 versions
The following example performs a full backup of the DB instance using the specified values for the parameters.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_database_full(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_parallel            => 4,  
        p_section_size_mb     => 10,
        p_rman_to_dbms_output => FALSE);
END;
/
            
