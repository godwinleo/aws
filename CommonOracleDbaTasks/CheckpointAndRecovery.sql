--------------------
Checkpointing the Database
-----------------------

exec rdsadmin.rdsadmin_util.checkpoint;

-----------------------
Setting Distributed Recovery
-----------------------

exec rdsadmin.rdsadmin_util.enable_distr_recovery;

exec rdsadmin.rdsadmin_util.disable_distr_recovery;
