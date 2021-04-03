json.extract! question, :id, :question, :guide, :field_type, :required, :created_at, :updated_at
json.url question_url(question, format: :json)
