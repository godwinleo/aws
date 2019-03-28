Validating a Tablespace
You can use the Amazon RDS procedure rdsadmin.rdsadmin_rman_util.validate_tablespace to validate the files associated with a tablespace.

This procedure uses the following common parameters for RMAN tasks:

p_validation_type

p_parallel

p_section_size_mb

p_rman_to_dbms_output

For more information, see Common Parameters for RMAN Procedures.

This procedure also uses the following additional parameter.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_tablespace_name

varchar2

A valid tablespace name

—

Required

The name of the tablespace.

