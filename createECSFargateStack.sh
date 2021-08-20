aws cloudformation create-stack \
  --stack-name ECSFargate \
  --template-body file://CFN-ECS-Fargate.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
    ParameterKey=Image,ParameterValue=your_ecr_url \
    ParameterKey=ServiceName,ParameterValue=your_service_name \
    ParameterKey=ContainerPort,ParameterValue=8080 \
    ParameterKey=LoadBalancerPort,ParameterValue=8080 \
    ParameterKey=HealthCheckPath,ParameterValue=your_check_path \
    ParameterKey=MinContainers,ParameterValue=2 \
    ParameterKey=MaxContainers,ParameterValue=4 \
    ParameterKey=AutoScalingTargetValue,ParameterValue=50 \
    ParameterKey=HostedZoneName,ParameterValue=your_domain_name \
    ParameterKey=BackendSubdomain,ParameterValue=backend \
    ParameterKey=RDSSubdomain,ParameterValue=rds \
    ParameterKey=Certificate,ParameterValue=your_ssl_certificate_arn
