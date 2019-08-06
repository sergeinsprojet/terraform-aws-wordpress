[
  {
    "name": "${name}",
    "image": "${image}",
    "mountPoints": [
      {
        "readOnly": null,
        "containerPath": "/var/www/html",
        "sourceVolume": "wordpress-data"
      },
      {
        "readOnly": null,
        "ContainerPath": "/var/www/html/.htaccess",
        "SourceVolume": "htaccess"
      },
      {
        "readOnly": null,
        "ContainerPath": "/usr/local/etc/php",
        "SourceVolume": "wordpress-php-ini"
      },
    ],
    "essential": true,
    "portMappings": [
      {
        "protocol": "tcp",
        "containerPort": ${port}
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