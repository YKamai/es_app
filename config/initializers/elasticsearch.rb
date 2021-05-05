require 'elasticsearch/transport'

Elasticsearch::Model.client = Elasticsearch::Client.new(
  host: Rails.configuration.elasticsearch['host'],
  port: Rails.configuration.elasticsearch['port']
)
