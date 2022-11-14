class CreateWikis < ActiveRecord::Migration[7.0]
  def change
    create_table :wikis do |t|
      t.string :name
      t.interger :year_model
      t.string :chassis_model
      t.text :description
      t.timestamps
    end
  end
end
