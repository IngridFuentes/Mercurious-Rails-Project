class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :city
      t.string :gender
      t.string :native_language
      t.string :practicing_language

      t.timestamps
    end
  end
end
