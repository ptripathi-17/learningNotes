provider "google"{
     region      = "us-central1"
     project = "arboreal-vision-358115"
     credentials = file("account.json")
     zone         = "us-central1-a"

}

resource "google_compute_instance" "demotfmachine" {
  name         = "test"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }
}

resource "google_storage_bucket" "static_sitee"{
     name ="priyankastore2"
     location = "US"
}
