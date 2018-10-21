class CreateAllotedNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :alloted_numbers do |t|
      t.string :first_name
      t.string :last_name
      t.string :number, index: {unique: true}, limit: 10

      t.timestamps
    end
  end
end
