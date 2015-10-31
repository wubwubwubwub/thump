json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :first_name, :last_name, :reply_address, :subject, :message
  json.url inquiry_url(inquiry, format: :json)
end
