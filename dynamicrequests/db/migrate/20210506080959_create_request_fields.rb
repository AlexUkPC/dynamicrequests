class CreateRequestFields < ActiveRecord::Migration[6.1]
  def change
    create_table :request_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :request_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
