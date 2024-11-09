/*------------------------s3 integration-----------------------*/
Create or replace storage integration s3_int
type=external_stage
storage_provider= s3
Enabled=true
storage_aws_role_arn='arn:aws:iam::992382412902:role/retailrole'
storage_allowed_locations=('s3://retailrawproject');

desc integration s3_int;

Create or replace stage retail
url='s3://retailrawproject'
file_format=CSV
storage_integration=s3_int;

list @retail;
show stages;
