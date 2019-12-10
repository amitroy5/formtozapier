class CreateZapierSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :zapier_submissions do |t|
      t.integer :zapier_form_id
      t.timestamps
    end
  end
end
