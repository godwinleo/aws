select * from table
    (rdsadmin.rds_file_util.read_text_file(
        p_directory => 'product_descriptions',
        p_filename  => 'rice.txt'));
