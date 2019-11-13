class AddNameToStatuses < ActiveRecord::Migration[6.0]
  def change
    add_column :statuses, :name, :string
  end
end
