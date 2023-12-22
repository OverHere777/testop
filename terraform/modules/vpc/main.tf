resource "aws_vpc" "this" {
    count = var.create_vpc ? 1 : 0

    cidr_block =  var.cidr_block
    tags = merge(
        var.tags,
        {name = var.name}
    )
  
}