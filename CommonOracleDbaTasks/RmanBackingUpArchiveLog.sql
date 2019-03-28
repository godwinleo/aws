Backing Up All Archived Redo Logs
You can use the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_archivelog_all to back up all of 
the archived redo logs for an Amazon RDS Oracle DB instance.

This procedure uses the following common parameters for RMAN tasks:

p_owner
p_directory_name
p_label
p_parallel
p_compress
p_rman_to_dbms_output

For more information, see Common Parameters for RMAN Procedures.

The following example backs up all archived redo logs for the DB instance.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_archivelog_all(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_parallel            => 4,  
        p_rman_to_dbms_output => FALSE);
END;
/
    

-----------------------------------------------------------------------------------------------------------
Backing Up an Archived Redo Log from a Date Range
You can use the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_archivelog_date to back up specific archived redo logs for an Amazon RDS Oracle DB instance by specifying a date range. The date range specifies which archived redo logs to back up.

This procedure uses the following common parameters for RMAN tasks:

p_owner

p_directory_name

p_label

p_parallel

p_compress

p_rman_to_dbms_output

For more information, see Common Parameters for RMAN Procedures.

This procedure also uses the following additional parameters.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_from_date

date

A date that is between the start_date and next_date of an archived redo log that exists on disk. The value must be less than or equal to the value specified for p_to_date.

—

Required

The starting date for the archived log backups.

p_to_date

date

A date that is between the start_date and next_date of an archived redo log that exists on disk. The value must be greater than or equal to the value specified for p_from_date.

—

Required

The ending date for the archived log backups.

The following example backs up archived redo logs in the date range for the DB instance.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_archivelog_date(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_from_date           => '03/01/2019 00:00:00',
        p_to_date             => '03/02/2019 00:00:00',
        p_parallel            => 4,  
        p_rman_to_dbms_output => FALSE);
END;
/


-----------------------------------------------------------------------------------------------------------

Backing Up an Archived Redo Log from an SCN Range
You can use the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_archivelog_scn to back up specific archived redo logs for an Amazon RDS Oracle DB instance by specifying a system change number (SCN) range. The SCN range specifies which archived redo logs to back up.

This procedure uses the following common parameters for RMAN tasks:

p_owner

p_directory_name

p_label

p_parallel

p_compress

p_rman_to_dbms_output

For more information, see Common Parameters for RMAN Procedures.

This procedure also uses the following additional parameters.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_from_scn

number

An SCN of an archived redo log that exists on disk. The value must be less than or equal to the value specified for p_to_scn.

—

Required

The starting SCN for the archived log backups.

p_to_scn

number

An SCN of an archived redo log that exists on disk. The value must be greater than or equal to the value specified for p_from_scn.

—

Required

The ending SCN for the archived log backups.

The following example backs up archived redo logs in the SCN range for the DB instance.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_archivelog_scn(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_from_scn            => 1533835,
        p_to_scn              => 1892447,
        p_parallel            => 4,  
        p_rman_to_dbms_output => FALSE);
END;
/
-----------------------------------------------------------------------------------------------------------
Backing Up an Archived Redo Log from a Sequence Number Range
You can use the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.backup_archivelog_sequence to back up specific archived redo logs for an Amazon RDS Oracle DB instance by specifying a sequence number range. The sequence number range specifies which archived redo logs to back up.

This procedure uses the following common parameters for RMAN tasks:

p_owner

p_directory_name

p_label

p_parallel

p_compress

p_rman_to_dbms_output

For more information, see Common Parameters for RMAN Procedures.

This procedure also uses the following additional parameters.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_from_sequence

number

A sequence number an archived redo log that exists on disk. The value must be less than or equal to the value specified for p_to_sequence.

—

Required

The starting sequence number for the archived log backups.

p_to_sequence

number

A sequence number of an archived redo log that exists on disk. The value must be greater than or equal to the value specified for p_from_sequence.

—

Required

The ending sequence number for the archived log backups.

The following example backs up archived redo logs in the sequence number range for the DB instance.


BEGIN
    rdsadmin.rdsadmin_rman_util.backup_archivelog_sequence(
        p_owner               => 'MYDBADMIN', 
        p_directory_name      => 'MYDIRECTORY',
        p_from_sequence       => 11160,
        p_to_sequence         => 11160,
        p_parallel            => 4,  
        p_rman_to_dbms_output => FALSE);
END;
/
            
