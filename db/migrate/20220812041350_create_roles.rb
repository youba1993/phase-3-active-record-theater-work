class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |i|
      i.string   :character_name
    end
  end
end
