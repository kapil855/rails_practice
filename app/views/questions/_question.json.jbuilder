json.extract! question, :id, :title, :description, :created_at, :updated_at
json.url question_url(question, format: :json)
json.title question.title.to_s
json.description question.description.to_s
