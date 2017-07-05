class AddIssueIdToBlogEntry < ActiveRecord::Migration[5.1]
  def change
    add_reference :blog_entries, :issue, foreign_key: true
  end
end
