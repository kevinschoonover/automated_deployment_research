provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "default-project" {
  name = "droplet-with-project"
  image = "ubuntu-18-04-x64"
  region = "nyc3"
  size = "s-1vcpu-1gb"
  monitoring = true
  private_networking = true
  tags = ["env_prod", "project_test"]
}

resource "digitalocean_droplet" "default-noproject" {
  name = "droplet-without-project"
  image = "ubuntu-18-04-x64"
  region = "nyc3"
  size = "s-1vcpu-1gb"
  monitoring = true
  private_networking = true
  tags = ["env_prod", "project_test"]
}


resource "digitalocean_project" "default" {
  name = "test"
  description = "test project"
  purpose = "Other"
  environment = "Development"
  resources   = [digitalocean_droplet.default-project.urn]
}
