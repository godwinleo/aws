If you use Oracle Database Enterprise Edition and have licensed the Diagnostics and Tuning packs, 
you can use Automatic Workload Repository (AWR). To enable AWR, change the
CONTROL_MANAGEMENT_PACK_ACCESS parameter.

AWR reports are typically generated using report generation scripts, 
such as awrrpt.sql, installed on the database host server. 
You dont have direct access to the host, but you can obtain copies of 
the scripts from another installation of Oracle Database. 
Alternatively, you can generate reports using the DBMS_WORKLOAD_REPOSITORY package.