json.extract! student, :id, :first_name, :last_name, :age, :title, :dob, :created_at, :updated_at
json.url student_url(student, format: :json)
