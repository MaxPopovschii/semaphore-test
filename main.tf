terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_pet" "semaphore_example" {
  length = 2
}

output "pet_name" {
  value = random_pet.semaphore_example.id
}
