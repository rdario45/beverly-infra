#####################
##  INPUTS
#####################
variable "tags" {
    type = map(string)
}

#####################
##  RESOURCES
#####################
resource "aws_dynamodb_table" "userAccess" {
  name           = "userAccess"
  hash_key       = "trackId"
  range_key      = "createdAt"
  # <billing>
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  # </billing>
  attribute {
    name = "trackId"
    type = "S"
  }
  
  attribute {
    name = "createdAt"
    type = "N"
  }

  tags = var.tags
}

resource "aws_dynamodb_table" "otp" {
  name           = "otp"
  hash_key       = "trackId"
  range_key      = "createdAt"
  # <billing>
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  # </billing>
  attribute {
    name = "trackId"
    type = "S"
  }
  
  attribute {
    name = "createdAt"
    type = "N"
  }

  tags = var.tags
}


resource "aws_dynamodb_table" "auth" {
  name           = "auth"
  hash_key       = "accessToken"
  range_key      = "expiresAt"
  # <billing>
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  # </billing>
  attribute {
    name = "accessToken"
    type = "S"
  }
  
  attribute {
    name = "expiresAt"
    type = "N"
  }

  tags = var.tags
}

resource "aws_dynamodb_table" "citas" {
  name           = "citas"
  hash_key       = "id"
  range_key      = "hora"
  # <billing>
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  # </billing>

  attribute {
    name = "id"
    type = "S"
  }
  
  attribute {
    name = "hora"
    type = "N"
  }

  tags = var.tags
}

resource "aws_dynamodb_table" "agendas" {
  name           = "agendas"
  hash_key       = "id"
  range_key      = "fecha"
  # <billing>
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  # </billing>
  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "fecha"
    type = "N"
  }

  tags = var.tags
}

resource "aws_dynamodb_table" "inventario" {
  name           = "inventario"
  hash_key       = "id"
  range_key      = "fecha"
  # <billing>
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  # </billing>
  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "fecha"
    type = "N"
  }

  tags = var.tags
}