---------------The create_verify_function Procedure--------------------------------

begin
    rdsadmin.rdsadmin_password_verify.create_verify_function(
        p_verify_function_name => 'CUSTOM_PASSWORD_FUNCTION', 
        p_min_length           => 12, 
        p_min_uppercase        => 2, 
        p_min_digits           => 1, 
        p_min_special          => 1,
        p_disallow_at_sign     => true);
end;
/


col text format a150

  select TEXT 
    from DBA_SOURCE 
   where OWNER = 'SYS' and NAME = 'CUSTOM_PASSWORD_FUNCTION' 
order by LINE;


alter profile DEFAULT limit PASSWORD_VERIFY_FUNCTION CUSTOM_PASSWORD_FUNCTION;


select * 
  from DBA_PROFILES 
 where RESOURCE = 'PASSWORD' and LIMIT = 'CUSTOM_PASSWORD_FUNCTION';


PROFILE                    RESOURCE_NAME                     RESOURCE  LIMIT
-------------------------  --------------------------------  --------  ------------------------
DEFAULT                    PASSWORD_VERIFY_FUNCTION          PASSWORD  CUSTOM_PASSWORD_FUNCTION


select * 
  from DBA_PROFILES 
 where RESOURCE_NAME = 'PASSWORD_VERIFY_FUNCTION';


PROFILE                    RESOURCE_NAME                     RESOURCE  LIMIT
-------------------------  --------------------------------  --------  ------------------------
DEFAULT                    PASSWORD_VERIFY_FUNCTION          PASSWORD  CUSTOM_PASSWORD_FUNCTION
RDSADMIN                   PASSWORD_VERIFY_FUNCTION          PASSWORD  NULL


----------------------------------The create_passthrough_verify_fcn Procedure----------------------------------------------

begin
    rdsadmin.rdsadmin_password_verify.create_passthrough_verify_fcn(
        p_verify_function_name => 'CUSTOM_PASSWORD_FUNCTION', 
        p_target_owner         => 'TEST_USER',
        p_target_function_name => 'PASSWORD_LOGIC_EXTRA_STRONG');
end;
/

alter profile DEFAULT limit PASSWORD_VERIFY_FUNCTION CUSTOM_PASSWORD_FUNCTION;