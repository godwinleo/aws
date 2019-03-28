
This procedure also uses the following additional parameters.


Parameter Name	Data Type	Valid Values	Default	Required	Description
p_datafile

varchar2

A valid datafile ID number or a valid datafile name including complete path

—

Required

The datafile ID number (from v$datafile.file#) or the full datafile name including the path (from v$datafile.name).

p_from_block

number

A valid integer

NULL

Optional

The number of the block where the validation starts within the data file. When this is NULL, 1 is used.

p_to_block

number

A valid integer

NULL

Optional

The number of the block where the validation ends within the data file. When this is NULL, the maximum block in the data file is used.

