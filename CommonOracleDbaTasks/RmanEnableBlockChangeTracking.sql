Enabling and Disabling Block Change Tracking


You can enable block change tracking for a DB instance using the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.enable_block_change_tracking.

You can disable block change tracking for a DB instance using the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.disable_block_change_tracking.




SELECT status, filename FROM V$BLOCK_CHANGE_TRACKING;
            
The following example enables block change tracking for a DB instance.


exec rdsadmin.rdsadmin_rman_util.enable_block_change_tracking;
            
The following example disables block change tracking for a DB instance.


exec rdsadmin.rdsadmin_rman_util.disable_block_change_tracking;
            