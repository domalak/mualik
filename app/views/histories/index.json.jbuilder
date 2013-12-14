json.array!(@histories) do |history|
  json.extract! history, : card_id, :user_id
  json.url history_url(history, format: :json)
end
