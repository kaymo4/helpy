json.extract! cosmic_activity, :id, :seo_key, :title_short, :title_long, :overview, :content, :type, :screenshot, :thumbnail, :custom1, :custom2, :cosmic_lesson_id, :created_at, :updated_at
json.url cosmic_activity_url(cosmic_activity, format: :json)
