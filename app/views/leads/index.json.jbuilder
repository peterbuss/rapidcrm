json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :company
  json.url lead_url(lead, format: :json)
end
