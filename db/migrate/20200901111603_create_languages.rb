class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :code, limit: 3
      t.string :english_name
      t.string :native_name
      t.string :code_2char, limit: 2

      t.timestamps
    end
    add_index :languages, :code
    add_index :languages, :english_name, unique: true
    add_index :languages, :native_name, unique: true
    add_index :languages, :code_2char, unique: true
  end
end
