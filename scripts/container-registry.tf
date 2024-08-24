#
# Creates a container registry on AWS so that you can publish your Docker images.
#
resource "aws_ecr_repository" "container_registry" {
  name = "webexcelerator002"
}

output "registry_url" {
  value = aws_ecr_repository.container_registry.repository_url
}

output "registry_arn" {
  value = aws_ecr_repository.container_registry.arn
}

output "registry_name" {
  value = aws_ecr_repository.container_registry.name
}
