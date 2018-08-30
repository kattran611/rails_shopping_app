class AddEmployeeToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :employee, :string
  end
end
