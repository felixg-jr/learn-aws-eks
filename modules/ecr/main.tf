resource "aws_ecr_repository" "this" {
  region = var.region
  name = var.name
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.image_scanning_configuration
  }

  tags = {
    "createdBy" = "terraform"
  }

  force_delete = true
}

resource "aws_ecr_repository_policy" "this" {
  repository = aws_ecr_repository.this.name
  policy     = data.aws_iam_policy_document.this.json
}
