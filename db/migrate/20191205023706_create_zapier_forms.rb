class CreateZapierForms < ActiveRecord::Migration[5.2]
  def change
    create_table :zapier_forms do |t|
      t.string :name
      t.timestamps
    end
  end
end
