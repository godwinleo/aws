You can use the Amazon RDS package rdsadmin.rdsadmin_rman_util to validate Amazon RDS for Oracle DB instance files, 
such as data files, tablespaces, control files, or server parameter files (SPFILEs).

For more information about RMAN validation, see Validating Database Files and Backups and VALIDATE in the Oracle documentation.



------------------------------------------------------------------------------
Validating a DB Instance
------------------------------------------------------------------------------

This procedure uses the following common parameters for RMAN tasks:

p_validation_type
p_parallel
p_section_size_mb
p_rman_to_dbms_output

exec rdsadmin.rdsadmin_rman_util.validate_database;



BEGIN
    rdsadmin.rdsadmin_rman_util.validate_database(
        p_validation_type     => 'PHYSICAL+LOGICAL', 
        p_parallel            => 4,  
        p_section_size_mb     => 10,
        p_rman_to_dbms_output => FALSE);
END;
/
            



When the p_rman_to_dbms_output parameter is set to FALSE, the RMAN output is written to a file in the BDUMP directory.

To view the files in the BDUMP directory, run the following SELECT statement.

SELECT * FROM table(rdsadmin.rds_file_util.listdir('BDUMP')) order by mtime;
SELECT text FROM table(rdsadmin.rds_file_util.read_text_file('BDUMP','rds-rman-validate-nnn.txt'));
----------------------------------------------------------------------



