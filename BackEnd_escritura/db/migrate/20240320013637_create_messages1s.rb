class CreateMessages1s < ActiveRecord::Migration[7.1]
  def change
    create_table :messages1s do |t|
      t.string :nombre
      t.string :mensaje
      t.timestamps
    end
  end
end
