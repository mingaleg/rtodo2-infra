#!/bin/bash

TASK_ID=$(aws ecs list-tasks --cluster prod --service-name prod-backend-web --region us-east-1 --query 'taskArns[0]' --output text  | awk '{split($0,a,"/"); print a[3]}')
aws ecs execute-command --task $TASK_ID --command "bash" --interactive --cluster prod --region us-east-1
