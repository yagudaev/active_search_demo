json.extract! title, :id, :name, :type, :director_id, :release_year, :rating, :duration_in_minutes, :duration_seasons, :description, :created_at, :updated_at
json.url title_url(title, format: :json)
