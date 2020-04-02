#!/bin/bash

stack_name=$1
template_body=$1.yml
params=$1.json
region=us-east-1

create_stack() {
    aws cloudformation create-stack \
    --stack-name $stack_name \
    --template-body file://$template_body \
    --parameters file://$params \
    --region=$region \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"
}

update_stack() {
    aws cloudformation update-stack \
    --stack-name $stack_name \
    --template-body file://$template_body \
    --parameters file://$params \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"
}

create_stack
if [ "$?" -ne 0 ]; then update_stack; fi