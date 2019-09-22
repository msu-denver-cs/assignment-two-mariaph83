class CreateFactories < ActiveRecord::Migration[6.0]
  def change
    create_table :factories do |t|
      t.references :car, index: true, foreign_key: true
      t.references :part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end