provider "google" {
  credentials = file("/home/thsehdrl94/jenkins-sa.json")
  project     = "zinc-computer-393021"
  region      = "asia-northeast3"  # 원하는 리전으로 변경
}

resource "goognle_compute_istance" "default" {
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "asia-northeast3"  # 원하는 존으로 변경

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # 사용할 이미지
    }
  }

  network_interface {
    network = "default"
  }
}

