json.array!(@event_aggs) do |event_agg|
  json.extract! event_agg, :id, :name, :url, :site_type, :pagination, :domain, :eventDetailsPageLink_xpath
  json.url event_agg_url(event_agg, format: :json)
end
