json.extract! choose_question, :id, :title, :body, :created_at, :updated_at
json.url choose_question_url(choose_question, format: :json)
