exec rdsadmin.rdsadmin_util.create_directory(p_directory_name => 'product_descriptions');


select DIRECTORY_PATH 
  from DBA_DIRECTORIES 
 where DIRECTORY_NAME='product_descriptions';
        
DIRECTORY_PATH
----------------------------------------
/rdsdbdata/userdirs/01