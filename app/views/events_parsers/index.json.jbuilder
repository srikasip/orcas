json.array!(@events_parsers) do |events_parser|
  json.extract! events_parser, :id, :eventName_xpath, :eventLocation_xpath, :eventDateTime_xpath, :eventDescription_xpath, :eventPrice_xpath, :eventImage_xpath
  json.url events_parser_url(events_parser, format: :json)
end
