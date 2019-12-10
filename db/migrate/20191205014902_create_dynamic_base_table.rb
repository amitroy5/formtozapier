class CreateDynamicBaseTable < ActiveRecord::Migration[5.2]
  def change
    create_table :form_fields do |t|
      t.integer :min
      t.integer :max
      t.integer :formable_id
      t.boolean :required
      t.string :label
      t.string :formable_type
      t.string :type
    end
    create_table :form_values do |t|
      t.string :value
      t.integer :form_field_id
      t.integer :submittable_id
      t.string :submittable_type
    end
  end
end
