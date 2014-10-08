json.array!(@metrics) do |metric|
  json.extract! metric, :name, :purpose, :definition
  json.url metric_url(metric, format: :json)
end