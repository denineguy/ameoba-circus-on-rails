json.array!(@ameobas) do |ameoba|
  json.extract! ameoba, :id
  json.url ameoba_url(ameoba, format: :json)
end
