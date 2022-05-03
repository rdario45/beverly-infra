#####################
##  INPUTS
#####################
variable "tags" {
    type = map(string)
}

#####################
##  RESOURCES
#####################
resource "aws_ecr_repository" "agendas" {
  name                 = "agendas"
  image_tag_mutability = "MUTABLE"
  tags = var.tags
}

resource "aws_ecr_repository" "citas" {
  name                 = "citas"
  image_tag_mutability = "MUTABLE"
  tags = var.tags
}

resource "aws_ecr_repository" "auth" {
  name                 = "auth"
  image_tag_mutability = "MUTABLE"
  tags = var.tags
}