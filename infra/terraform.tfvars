subscription_id     = "a421850f-22c2-4fcb-986d-9dd2063b0e93"
resource_group_name = "FeedbackRG"
location            = "eastus"

acr_name           = "feedbackacr123"
docker_repo_name   = "feedback-backend-app-na"
docker_image_tag   = "v5"

app_service_plan_name = "feedback-appservice-plan"
app_service_name      = "feedback-backend-app-na"

subscription_id = var.subscription_id
client_id       = var.client_id
client_secret   = var.client_secret
tenant_id       = var.tenant_id
