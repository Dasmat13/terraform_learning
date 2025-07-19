terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}

resource "kubernetes_deployment" "nginx_monitoring" {
  metadata {
    name      = "nginx-nginx-monitor"
    namespace = kubernetes_namespace.monitoring.metadata[0].name
    labels = {
      app = "nginx-monitor"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "nginx-monitor"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx-monitor"
        }
      }

      spec {
        container{
          name  = "nginx-container"
          image = "nginx"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx_monitoring" {
  metadata {
    name      = "nginx-monitor-service"
    namespace = kubernetes_namespace.monitoring.metadata[0].name
  }

  spec {
    selector = {
      app = "nginx-monitor"
    }

    type = "NodePort"

    port {
      port        = 80
      target_port = 80
    }
  }
}

