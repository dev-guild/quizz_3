json.extract! questioner_form, :id, :question, :user, :answer, :created_at, :updated_at
json.url questioner_form_url(questioner_form, format: :json)