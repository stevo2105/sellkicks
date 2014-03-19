json.array!(@shoeforms) do |shoeform|
  json.extract! shoeform, :id, :contact_email, :phone_number, :size, :price, :img_url, :description, :condition
  json.url shoeform_url(shoeform, format: :json)
end
