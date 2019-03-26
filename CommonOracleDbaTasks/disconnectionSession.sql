
---------------------------------------------------------------------------------------------------------
disconnect a session
---------------------------------------------------------------------------------------------------------

sid number of the session
The serial number of the session.
method -> varchar 'IMMEDIATE' Optional Valid values are 'IMMEDIATE' or 'POST_TRANSACTION'.

begin
    rdsadmin.rdsadmin_util.disconnect(
        sid    => sid, 
        serial => serial_number);
end;
/

select SID, SERIAL#, STATUS from V$SESSION where USERNAME = 'AWSUSER';

---------------------------------------------------------------------------------------------------------
killing a session
---------------------------------------------------------------------------------------------------------
sid number of the session
The serial number of the session.
method -> varchar 'IMMEDIATE' Optional Valid values are 'IMMEDIATE' or 'POST_TRANSACTION'.

begin
    rdsadmin.rdsadmin_util.kill(
        sid    => sid, 
        serial => serial_number);
end;
/

select SID, SERIAL#, STATUS from V$SESSION where USERNAME = 'AWSUSER';
