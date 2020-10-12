json.extract! course, :id, :department_id, :number, :hours, :created_at, :updated_at
json.url course_url(course, format: :json)
