provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "default" {
  name = "test-droplet"
  image = "ubuntu-18-04-x64"
  region = "nyc3"
  size = "s-1vcpu-1gb"
  monitoring = true
  private_networking = true
  tags = ["test_droplet", "test"]
}
