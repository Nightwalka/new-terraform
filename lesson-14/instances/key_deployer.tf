# Create a key and add it here in both deployer blocks

resource "aws_key_pair" "deployer_ohio" {
  key_name   = "ssh_key"
  # Enter your key here
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJoGN0RhTKNMquHKpUJVYAyPV9yGqmjTDpMXkRhotT+1 LEGION@DESKTOP-TJO2N2J"
}

resource "aws_key_pair" "deployer_virginia" {
  provider = aws.virginia
  key_name   = "ssh_key"
  # Enter your key here
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJoGN0RhTKNMquHKpUJVYAyPV9yGqmjTDpMXkRhotT+1 LEGION@DESKTOP-TJO2N2J"
}
