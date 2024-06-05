class ChangeColumnNameToPets < ActiveRecord::Migration[7.1]
  def change
    rename_column :pets, :type, :type_of_pet
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
