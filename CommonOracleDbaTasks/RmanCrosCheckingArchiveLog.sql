Crosschecking Archived Redo Logs
You can crosscheck archived redo logs using the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.crosscheck_archivelog.

You can use this procedure to crosscheck the archived redo logs registered in the control file and optionally delete the expired logs. Each time an RMAN backup is performed, a record is made in the control file. Over time, these records increase the size of the control file. It is best practice to flush old, expired records periodically.

Note

Standard Amazon RDS backups don't use RMAN and therefore don't create records in the control file.

This procedure uses the common parameter p_rman_to_dbms_output for RMAN tasks.

For more information, see Common Parameters for RMAN Procedures.

This procedure also uses the following additional parameter.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_delete_expired

boolean

TRUE, FALSE

TRUE

Optional

When TRUE, delete expired archived redo logs from the control file.

When FALSE, retain the expired archived redo logs in the control file.

This procedure is supported for the following Amazon RDS for Oracle DB engine versions:

11.2.0.4.v19 or higher 11.2 versions

12.1.0.2.v15 or higher 12.1 versions

12.2.0.1.ru-2019-01.rur-2019-01.r1 or higher 12.2 versions

The following example deletes the expired archived redo logs from the control file.


BEGIN
    rdsadmin.rdsadmin_rman_util.crosscheck_archivelog(
        p_delete_expired      => 4,  
        p_rman_to_dbms_output => FALSE);
END;
/
            
