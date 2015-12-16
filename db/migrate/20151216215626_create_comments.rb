class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text, null: false
      t.references :article, index: true

      t.timestamps
    end
  end
end
