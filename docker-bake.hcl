group "default" {
  targets = ["time-server", "fetch-server"]
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

target "fetch-server" {
  context = "${WORKSPACE}"
  dockerfile = "fetch/Dockerfile"
  platforms = ["linux/amd64","linux/arm64"]
  tags = [
      "${REGISTRY_URL}/opcal/mcpo-fetch-server:latest"
    ]
}