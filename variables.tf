variable "image_name" {
  description = "The name of the Docker image to use"
}

variable "container_memory" {
  description = "The memory limit for the Docker containers"
}

variable "privileged" {
  description = "Whether the containers should be privileged or not"
  default     = false
}

variable "num_containers" {
  description = "The number of containers to spawn"
}

variable "start_port" {
  description = "The starting port number"
}
