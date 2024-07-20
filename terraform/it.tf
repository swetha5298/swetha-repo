provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "server" {
  ami           = "ami-0f9f6e1570315ccba"
  instance_type = "t2.micro"
  subnet_id     = "subnet-00e10b5dc8dc27a9b"
  security_groups = ["sg-05ab42e9c232e08fe"]

  key_name = aws_key_pair.key.id

  tags = {
    Name = "terraform-server"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "sample"
  public_key ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDilvN4cFrJ7xqkNx2hedjCOvVYCoOrrtoWuUJp2qqODmUiHh4BhxnlyaUZvSwkrmimDios2AlhBJBlPC/CFcOZdUk4PxWLvWfk19WVAsn5fQ/YD5tme0+TP96/gTrZVhbTL6aa33Z43AQEtfUunoARbw8ff8d9QsqkhHH0pZ7XEb8FXUmVrGrKIwu3k3hz/be7pIx69bOgmnoRcy4FKH0XREbjpOOzZnu/Z/w+bnd+yNNUo9FU4rbAhTMiC+VrlB6hOYciafREIxgmsPc1bJS7I3U367Cxq4KqPU6J/HMNFt4GH3Sh8EuKDCCv41yrCO31PJmARxf1QlW0rskUKmkG12YfmGd9P5tLe+h78IitbuXbruvKGqBJY7PzBuwIxn8i/0aTD2J0c10oStxgKcY+FcvHpl9TaIeAhDHFd1eW/RRdxxj7OAIRXVO/U2TZwTAKKKLXfaP9atCa38vhWPhiGOgpcCAURlr0g1nR+PLXIHflxLnmP8CePDUavfcgMxU= venka@LAPTOP-COHSOLON"
}