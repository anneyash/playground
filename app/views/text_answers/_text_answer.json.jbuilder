json.extract! text_answer, :id, :title, :body, :created_at, :updated_at
json.url text_answer_url(text_answer, format: :json)
