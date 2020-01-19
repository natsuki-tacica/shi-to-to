class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string   :name,             limit: 255
      t.string   :image,            limit: 255
      t.string   :description

    end
  end
end
