

Accessing transaction logs is supported for Oracle version 11.2.0.4.v11 and later, and 12.1.0.2.v7 and later.

You might want to access your online and archived redo log files for mining with external tools such as GoldenGate, Attunity, Informatica, and others. If you want to access your online and archived redo log files, you must first create directory objects that provide read-only access to the physical file paths.

The following code creates directories that provide read-only access to your online and archived redo log files:

Important

This code also revokes the DROP ANY DIRECTORY privilege.

exec rdsadmin.rdsadmin_master_util.create_archivelog_dir;
exec rdsadmin.rdsadmin_master_util.create_onlinelog_dir;


After you create directory objects for your online and archived redo log files, you can read the files by using PL/SQL. For more information about reading files from directory objects, see Listing Files in a DB Instance Directory and Reading Files in a DB Instance Directory.

The following code drops the directories for your online and archived redo log files.

exec rdsadmin.rdsadmin_master_util.drop_archivelog_dir;
exec rdsadmin.rdsadmin_master_util.drop_onlinelog_dir;

The following code grants and revokes the DROP ANY DIRECTORY privilege.

exec rdsadmin.rdsadmin_master_util.revoke_drop_any_directory;
exec rdsadmin.rdsadmin_master_util.grant_drop_any_directory;