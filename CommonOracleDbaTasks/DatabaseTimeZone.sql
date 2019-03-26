There are two different ways that you can set the time zone of your Amazon RDS Oracle database:
You can use the Timezone option.
The Timezone option changes the time zone at the host level and impacts all date columns and values such as SYSDATE. For more information about the Timezone option, see Oracle Time Zone.
You can use the Amazon RDS procedure rdsadmin.rdsadmin_util.alter_db_time_zone.
The alter_db_time_zone procedure changes the time zone for only certain data types, and doesn't change SYSDATE. There are additional restrictions on setting the time zone listed in the Oracle documentation.

exec rdsadmin.rdsadmin_util.alter_db_time_zone(p_new_tz => '+3:00');

exec rdsadmin.rdsadmin_util.alter_db_time_zone(p_new_tz => 'Africa/Algiers');

