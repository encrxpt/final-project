class RemoveStatusFromStatuses < ActiveRecord::Migration[6.0]
  def change

    remove_column :statuses, :status, :string
  end
end
