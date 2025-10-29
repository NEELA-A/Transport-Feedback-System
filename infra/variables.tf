variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "resource_group_name" {
  type    = string
  default = "FeedbackRG"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "acr_name" {
  type    = string
  default = "feedbackacr123"
}

variable "app_service_plan" {
  type    = string
  default = "feedback-app-plan"
}

variable "webapp_name" {
  type    = string
  default = "feedback-backend-app-na"
}
