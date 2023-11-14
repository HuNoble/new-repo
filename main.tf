resource "google_pubsub_topic" "example" {
  name = "newest-example-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}