json.extract! blog_entry, :id, :title, :teaser, :image, :content, :created_at, :updated_at
json.url blog_entry_url(blog_entry, format: :json)
