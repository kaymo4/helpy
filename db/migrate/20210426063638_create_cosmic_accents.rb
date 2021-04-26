class CreateCosmicAccents < ActiveRecord::Migration
  def change
    create_table :cosmic_accents do |t|
      t.string :name
      t.text :content
      t.references :cosmic_part, index: true, foreign_key: true
      t.references :cosmic_lesson, index: true, foreign_key: true
      t.references :ccss_math, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
