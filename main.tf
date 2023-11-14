resource "google_pubsub_topic" "example" {
  name = "new-example-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}