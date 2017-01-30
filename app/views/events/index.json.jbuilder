json.array!(@events) do |event|
  json.extract! event, :id, :message, :hostname, :timestamp, :organization_id
  json.url event_url(event, format: :json)
end
