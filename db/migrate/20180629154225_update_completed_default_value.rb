class UpdateCompletedDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column(:tasks, :completed, :boolean, default: false, null: false)
  end
end
