class ChangeValueAndQuantityInMedicine < ActiveRecord::Migration[5.2]
  def change
    change_column_null :medicines, :value, false
    change_column_null :medicines, :quantity, false
  end
end
