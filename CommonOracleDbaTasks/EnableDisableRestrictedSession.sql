p_enable - Boolean True

select LOGINS from V$INSTANCE;
 
LOGINS
-------
ALLOWED

/* Enable restricted sessions */

exec rdsadmin.rdsadmin_util.restricted_session(p_enable => true);
 

/* Verify that the database is now restricted. */

select LOGINS from V$INSTANCE;
 
LOGINS
----------
RESTRICTED
 
/* Disable restricted sessions */
exec rdsadmin.rdsadmin_util.restricted_session(p_enable => false);
 
/* Verify that the database is now unrestricted again. */

select LOGINS from V$INSTANCE;
 
LOGINS
-------
ALLOWED