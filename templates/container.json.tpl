[
  {
    "name": "${name}",
    "image": "${image}",
    "mountPoints": [
      {
        "readOnly": null,
        "containerPath": "/var/www/html",
        "sourceVolume": "wordpress-data"
      }
    ],
    "essential": true,
    "portMappings": [
      {
        "protocol": "tcp",
        "containerPort": "${port}"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "${log_group}",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "ecs"
      }
    },
    "environment": ${env_vars}
  }
]