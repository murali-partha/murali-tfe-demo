provider "aws" {
  region = "us-west-2"  # Specify your desired AWS region
}

resource "time_sleep" "wait_100_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "100s"
}
