class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
