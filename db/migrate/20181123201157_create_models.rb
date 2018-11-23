class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :hair_color
      t.string :eye_color
      t.string :alive

      t.timestamps
    end
  end
end
