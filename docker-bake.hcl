group "default" {
  targets = ["time-server"]
}

variable "WORKSPACE" {
  type = string
}

variable "REGISTRY_URL" {
  type = string
  default = "ghcr.io"
}

target "time-server" {
  context = "${WORKSPACE}"
  dockerfile = "time/Dockerfile"
  platforms = ["linux/amd64","linux/arm64"]
  tags = [
      "${REGISTRY_URL}/opcal/mcpo-time-server:latest"
    ]
}