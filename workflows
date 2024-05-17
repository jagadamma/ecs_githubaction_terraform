provider "aws" {
  region = var.aws_region
}

#resource "aws_ecs_cluster" "my_cluster" {
#  name = var.cluster_name
#}

resource "aws_ecr_repository" "my_repository" {
  name = var.repository_name
}


resource "aws_ecr_repository_policy" "my_repository_policy" {
  repository = aws_ecr_repository.my_repository.name

  policy = jsonencode({
    Version = "2008-10-17",
    Statement = [{
      Sid       = "AllowPull"
      Effect    = "Allow"
      Principal = "*"
      Action    = [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability"
      ]
    }]
  })
}


#resource "aws_ecs_task_definition" "my_task_definition" {
#  family                   = var.task_definition_name
#  requires_compatibilities = [
#    "FARGATE",
#  ]
#  network_mode       = "awsvpc"
#  cpu                = 256
#  memory             = 512
#  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
#
#  container_definitions    = jsonencode([
#    {
#      name      = "my-container"
#      image     = "${aws_ecr_repository.my_repository.repository_url}:latest"
#      essential = true
#
#      portMappings = [
#        {
#          containerPort = 80
#          protocol      = "tcp"
#        }
#      ]
#    }
#  ])
#}

#resource "aws_ecs_service" "my_service" {
#  name            = var.service_name
#  cluster         = aws_ecs_cluster.my_cluster.id
#  task_definition = aws_ecs_task_definition.my_task_definition.arn
#  desired_count   = 1
#
#  network_configuration {
#    subnets         = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
#    assign_public_ip = true
#  }


#  capacity_provider_strategy {
#    base              = 0
#    capacity_provider = "FARGATE"
#    weight            = 100
#  }
#}

