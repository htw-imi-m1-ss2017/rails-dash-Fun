class CreateBlogEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.string :teaser
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
