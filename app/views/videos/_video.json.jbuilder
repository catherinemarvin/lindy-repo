json.extract! video, :id, :link, :start, :end, :created_at, :updated_at
json.url video_url(video, format: :json)
