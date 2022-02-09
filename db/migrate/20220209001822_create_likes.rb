class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :article, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :glyph

      t.timestamps
    end
  end
end
