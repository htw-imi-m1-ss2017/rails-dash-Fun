class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :headline
      t.date :released_at

      t.timestamps
    end
  end
end
