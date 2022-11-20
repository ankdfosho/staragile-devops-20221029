aws ec2 run-instances \
    --image-id "ami-08c40ec9ead489470" \
    --instance-type t2.medium \
    --count 1 \
    --subnet-id "subnet-a311128d" \
    --key-name "cloudbinary-keys" \
    --security-group-ids "sg-0ce20efcdac536efa" \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=ansible-node1},{Key=Type,Value=Kubernetes Cluster - CP},{Key=ProjectName,Value=CloudBinary},{Key=Environment,Value=Dev}]' \
    --user-data file://ansible-node1.txt 