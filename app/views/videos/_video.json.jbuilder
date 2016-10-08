json.extract! video, :id, :url, :user, :created_at, :updated_at
json.url video_url(video, format: :json)