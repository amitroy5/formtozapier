class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :formname
      t.string :zapierurl

      t.string :input1name
      t.string :input1dropdown

      t.string :input2name
      t.string :input2dropdown

      t.string :input3name
      t.string :input3dropdown

      t.timestamps
    end
  end
end
