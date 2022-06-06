resource "aws_ecr_repository" "clojure_app_ecr_repo" {
  count                = length(var.apps)
  name                 = var.apps[count.index]
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
