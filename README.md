# verified_access_configs
This terraform repo is a sample for all the different AWS verified access endpoints created in an organization

## Create Verified Access Endpoints

To create infra, navigate to live folder and get inside the projer environment folder.

```
cd live/dev

```
Modify the dev-backend.tf file to point to the right AWS s3 bucket to store your terrafrom state files

Modify the terraform.tfvars to have the right values form your AWS accounts

Execute the plan and see the changes
./plan_infra.sh

```
./create_infra.sh
```

To destroy infra run 

```
./destroy_infra.sh

