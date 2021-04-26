class CreateCosmicLessons < ActiveRecord::Migration
  def change
    create_table :cosmic_lessons do |t|
      t.string :seo_key
      t.string :cosmic_domain
      t.integer :cosmic_domain_order
      t.string :title_short
      t.string :title_long
      t.text :overview
      t.text :content
      t.string :type
      t.string :custom1
      t.text :custom2
      t.references :ccss_math, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
