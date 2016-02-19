json.array!(@documents) do |document|
  json.extract! document, :id, :document_type_id
  json.url document_url(document, format: :json)
end
