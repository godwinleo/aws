exec rdsadmin.rdsadmin_util.drop_logfile(grp => 3);


Parameter Name	Data Type	Default	Required	Description
grp
The group number of the log.



select GROUP#, STATUS from V$LOG;

GROUP#     STATUS
---------- ----------------
1          CURRENT
2          INACTIVE
3          INACTIVE
4          UNUSED

