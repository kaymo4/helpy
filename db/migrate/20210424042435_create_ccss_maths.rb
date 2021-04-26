class CreateCcssMaths < ActiveRecord::Migration
  def change
    create_table :ccss_maths do |t|
      t.string :ccss_id
      t.string :ccss_type
      t.string :domain_id
      t.string :domain_desc
      t.string :grade_id
      t.string :grade_name
      t.string :cluster_id
      t.string :standard_id
      t.string :standard_desc
      t.string :ccss_id
      t.string :ccss_typ
      t.string :domain_id
      t.string :domain_desc
      t.string :grade_id
      t.string :grade_name
      t.string :cluster_id
      t.string :standard_id
      t.text :standard_desc

      t.timestamps null: false
    end
  end
end
