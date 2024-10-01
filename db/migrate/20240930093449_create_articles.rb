class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.date :date

      t.timestamps
    end
  end
end
