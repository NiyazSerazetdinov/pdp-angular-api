class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false, default: ""
      t.text :text, null: false

      t.timestamps
    end
  end
end
