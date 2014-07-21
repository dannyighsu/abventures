class Addpass < ActiveRecord::Migration
  def up
    add_column :applications, :password, :string
  end

  def down
    remove_column :applications, :password, :string
  end
end
