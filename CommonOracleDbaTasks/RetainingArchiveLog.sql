
You can retain archived redo logs locally on your DB instance for use 
with products like Oracle LogMiner (DBMS_LOGMNR). After you have retained
the redo logs, you can use LogMiner to analyze the logs. For more information, 
see Using LogMiner to Analyze Redo Log Files in the Oracle documentation.

You can use the Amazon RDS procedure rdsadmin.rdsadmin_util.set_configuration 
to retain archived redo logs. The set_configuration procedure has the following parameters.


begin
    rdsadmin.rdsadmin_util.set_configuration(
        name  => 'archivelog retention hours',
        value => '24');
end;
/
commit;



You can use the Amazon RDS procedure rdsadmin.rdsadmin_util.show_configuration to view how 
long archived redo logs are retained for your DB instance.
The following example shows the log retention time.

set serveroutput on
exec rdsadmin.rdsadmin_util.show_configuration;   

--------output-------
NAME:archivelog retention hours
VALUE:48
DESCRIPTION:ArchiveLog expiration specifies the duration in hours before archive/redo log files are automatically deleted.                
            


Because the archived redo logs are retained on your DB instance, ensure that your DB instance has enough allocated storage for the retained logs. To determine how much space your DB instance has used in the last X hours, you can run the following query, replacing X with the number of hours.

select sum(BLOCKS * BLOCK_SIZE) bytes 
  from V$ARCHIVED_LOG
 where FIRST_TIME >= SYSDATE-(X/24) and DEST_ID=1;