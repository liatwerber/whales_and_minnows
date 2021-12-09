json.extract! course, :id, :description, :professor_id, :course_name, :quarter,
              :course_time, :created_at, :updated_at
json.url course_url(course, format: :json)
