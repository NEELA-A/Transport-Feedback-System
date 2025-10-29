variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  type        = string
  description = "Azure Container Registry Name"
}

variable "docker_repo_name" {
  type        = string
  description = "Docker repository name for the backend"
}

variable "docker_image_tag" {
  type        = string
  description = "Tag for Docker image"
}

variable "app_service_plan_name" {
  type        = string
  default     = "feedback-appservice-plan"
}

variable "app_service_name" {
  type        = string
  default     = "feedback-backend-app-na"
}

