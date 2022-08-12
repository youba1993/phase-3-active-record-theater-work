class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |i|
        i.string     :actor
        i.string     :location
        i.integer    :phone
        i.boolean    :hired
        i.integer    :role_id
    end
  end
end
