/* 
1. terraform.tfvars / variables.tf -default value
      instancetype="t2.large"

2. Loading Variable Values from CLI
      terraform plan -var="instancetype=t2.small"

3. Loading from custom tfvars file
      terraform plan -var-file="custom.tfvars"

4. Setting ENV variables
   - Windows Specific Commands:
        setx TF_VAR_instancetype m5.large
        echo %TF_VAR_instancetype

   - Linux / MAC specific commands:
        export TF_VAR_instancetype=t2.nano
        echo TF_VAR_instancetype

*/