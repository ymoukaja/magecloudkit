# ECS Service

Deploy one or more Docker containers as a long-running ECS service. This module includes support for automated, zero-downtime deployment, auto-restart of crashed containers and integration with an Application Load Balancer (ALB).

The service module creates an ecs service, task definition and a route53 record under the local service zone (see the dns module).

## Usage