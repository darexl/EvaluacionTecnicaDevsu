# Configuración del proveedor de Google Cloud Platform
provider "google" {
  credentials = file(credentials = file("my-key.json"))
  project     = "EvaluacionTecnica"
  region      = "us-central1-a"
}

# Creación del cluster de GKE (Google Kubernetes Engine)
resource "google_container_cluster" "eval-test-cluster" {
  name               = "eval-test-cluster"
  location           = "us-central1-a"
  initial_node_count = 3

  master_auth {
    username = ""
    password = ""
  }
}

# Creación del balanceador de carga
resource "google_compute_global_forwarding_rule" "a3e626bac255d4741877fcdd8b9ce72b" {
  name       = "a3e626bac255d4741877fcdd8b9ce72b"
  target     = google_compute_target_pool.my_target_pool.self_link
  port_range = "80"

  # Región donde se debe crear el balanceador de carga
  region = "us-central1"
}

resource "google_compute_http_health_check" "my_health_check" {
  name               = "my-health-check"
  request_path       = "/"
  check_interval_sec = 5
  timeout_sec        = 5
}

resource "google_compute_target_pool" "my_target_pool" {
  name        = "my-target-pool"
  region      = "us-central1-a"
  health_checks = [
    google_compute_http_health_check.my_health_check.self_link
  ]
}

resource "google_compute_instance_group" "my_instance_group" {
  name        = "my-instance-group"
  zone        = "us-central1"
  description = "Instance group for my cluster nodes"

  instances = google_container_cluster.my_cluster.instances
}

# Asociar el grupo de instancias con el balanceador de carga
resource "google_compute_forwarding_rule" "my_forwarding_rule" {
  name                  = "my-forwarding-rule"
  region                = "us-central1-a"
  load_balancing_scheme = "EXTERNAL"
  target                = google_compute_target_pool.my_target_pool.self_link
}