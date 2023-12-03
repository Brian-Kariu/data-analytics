terraform {
  required_providers {
    render = {
      version = "1.3.0"
      source  = "jackall3n/render"
    }
  }
}

provider "render" {
}

resource "render_service" "airbyte" {
  name = "airbyte"
  repo = "https://github.com/Brian-Kariu/data-analytics/infra/airbyte"
  type = "web_service"

  web_service_details = {
    env = "python"

    native = {
      build_command = "pip install -r requirements.txt"
      start_command = "python3 start.py"
    }
  }
}

resource "render_service" "mage-ai" {
  name = "airbyte"
  repo = "https://github.com/Brian-Kariu/data-analytics/orchestration/"
  type = "web_service"

  web_service_details = {
    env = "docker"

    native = {
      build_command = "docker build -t mage-ai ."
      start_command = "docker run -p 6789:6789 mage-ai"
    }
  }
}

