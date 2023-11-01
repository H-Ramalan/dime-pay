json.extract! transaction_category, :id, :transaction_id, :category_id, :created_at, :updated_at
json.url transaction_category_url(transaction_category, format: :json)
