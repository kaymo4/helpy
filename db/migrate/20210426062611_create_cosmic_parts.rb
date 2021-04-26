class CreateCosmicParts < ActiveRecord::Migration
  def change
    create_table :cosmic_parts do |t|
      t.string :name
      t.text :content
      t.references :cosmic_lesson, index: true, foreign_key: true
      t.references :ccss_math, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
