----------------------------------grant----------------------------------

begin
    rdsadmin.rdsadmin_util.grant_sys_object(
        p_obj_name  => 'V_$SESSION',
        p_grantee   => 'USER1',
        p_privilege => 'SELECT');
end;
/


begin
    rdsadmin.rdsadmin_util.grant_sys_object(
        p_obj_name     => 'V_$SESSION',
        p_grantee      => 'USER1',
        p_privilege    => 'SELECT',
        p_grant_option => true);
end;
/


grant SELECT_CATALOG_ROLE to USER1 with admin option; 
grant EXECUTE_CATALOG_ROLE to USER1 with admin option;

----------------------------------revoke----------------------------------

begin
    rdsadmin.rdsadmin_util.revoke_sys_object(
        p_obj_name  => 'V_$SESSION',
        p_revokee   => 'USER1',
        p_privilege => 'SELECT');
end;
/

grant SELECT_CATALOG_ROLE to user1;
grant EXECUTE_CATALOG_ROLE to user1;

 select * 
    from ROLE_TAB_PRIVS  
   where ROLE in ('SELECT_CATALOG_ROLE','EXECUTE_CATALOG_ROLE') 
order by ROLE, TABLE_NAME asc;

create user user1 identified by password;
grant CREATE SESSION to user1;
grant SELECT on sh.sales TO user1;