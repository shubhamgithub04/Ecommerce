json.extract! movie_show, :id, :movie_id, :show_date, :show_slot, :created_at, :updated_at
json.url movie_show_url(movie_show, format: :json)
