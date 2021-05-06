class AddTypeToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :request_type_id, :integer
    add_column :requests, :properties, :text
  end
end
