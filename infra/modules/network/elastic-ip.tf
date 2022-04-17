resource "aws_eip" "eipA" {
  vpc      = true
}

resource "aws_eip" "eipB" {
  vpc      = true
}

resource "aws_eip" "eipC" {
  vpc      = true
}
