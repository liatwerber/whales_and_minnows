json.extract! review, :id, :body, :reviewer_id, :course_id, :course_rating, :created_at, :updated_at
json.url review_url(review, format: :json)
