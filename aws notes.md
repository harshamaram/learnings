
EC2 Instance types
D2	Dense storate (Hadoop, file servers)
R4	memory optimized (memory intence apps / DBs)
M4	General purpose 
C4	Compute optimized
G2	Graphics optimized
I2	High speed storage (NO SQL, DBs..)
F2	Field programmable gateway
T2	lowest cose, general purpose
P2	Graphics, General purpose GPU (machine learning, bitcoins etc)
X1	memory optimized (SAP HANA / Apache spark) Xtream RAM
 
AWS CLI (Command line interface)
Enables to perform actions which can be done through console. 
Setup process:
-	Create instance
-	Connect via putty
-	Configure credential
	Aws configure
(use Access Key and secret access keys which are created while creating the EC2 instnace)
Default region – the user region code
Default o/p format: blank
Few CLI commands:
Aws ec2 describe-instance
Aws ec2 describe-images
Aws ec2 run-instance
Aws ec2 start-instance
Aws ec2 terminate-instance
Aws s3 ls
Aws s3 help
Cat ~/.aws/credentials //displays access and secret access keys
[the above is huge security issue. Use IAM roles instead. Attach IAM role to an EC2 instance then the user can perform the associated actions via CLI. This avoids saving the credentials on the ec2 instance (like ~/.aws/credential)
 Do not save access key and or security access key on the instance or code or Github.
 
LAMBDA
AWS Lambda is a compute service where you can upload the code and Lambda will take care of provisioning the OS, patching, scaling etc. 
-	Event driven
these events can be changes in S3 bucket, or Amazon Dynamo DB
-	HTTP request. 
Using Amazon API gateway or API calls using AWS SDK.
Supported Apps for Lambda
Node JS | Java | Python | C#
Highlights:
-	No servers
-	Continuous scaling
-	Extra Extra cheap. 
Lambda functions are independent
1 event = 1 function
If there are 1K requests, there will be 1K lambda function invocations. 
Max time a lambda function can take is 5 minutes. 
One lamda can trigger another lambda.
Debug tool: AWS X-Ray

