class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :no
      t.string :group_id
      t.string   :text,       limit: 255
    end
  end
end
