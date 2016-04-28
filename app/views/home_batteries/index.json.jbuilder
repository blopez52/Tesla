json.array!(@home_batteries) do |home_battery|
  json.extract! home_battery, :id
  json.url home_battery_url(home_battery, format: :json)
end
