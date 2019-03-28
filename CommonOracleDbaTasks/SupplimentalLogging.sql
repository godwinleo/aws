The following example enables supplemental logging.

begin
    rdsadmin.rdsadmin_util.alter_supplemental_logging(
        p_action => 'ADD');
end;
/
The following example enables supplemental logging for all fixed-length maximum size columns.

begin
    rdsadmin.rdsadmin_util.alter_supplemental_logging(
        p_action => 'ADD',
        p_type   => 'ALL');
end;
/
The following example enables supplemental logging for primary key columns.

begin
    rdsadmin.rdsadmin_util.alter_supplemental_logging(
        p_action => 'ADD',
        p_type   => 'PRIMARY KEY');
end;
/
------------------------------------------------------------------------------------------------------------------

Parameter Name	Data Type	Default	Required	Description
p_action

varchar2

Required

'ADD' to add supplemental logging, 'DROP' to drop supplemental logging.
------------------------------------------------------------------------------------------------------------------
p_type

varchar2

null

Optional

The type of supplemental logging. Valid values are 'ALL', 'FOREIGN KEY', 'PRIMARY KEY', or 'UNIQUE'.