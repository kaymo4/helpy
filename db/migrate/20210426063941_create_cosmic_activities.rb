class CreateCosmicActivities < ActiveRecord::Migration
  def change
    create_table :cosmic_activities do |t|
      t.string :seo_key
      t.string :title_short
      t.string :title_long
      t.text :overview
      t.text :content
      t.string :type
      t.string :screenshot
      t.string :thumbnail
      t.string :custom1
      t.text :custom2
      t.references :cosmic_lesson, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
