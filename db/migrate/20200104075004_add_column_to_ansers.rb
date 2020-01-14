class AddColumnToAnsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :ansers, :group, foreign_key: true
    add_reference :ansers, :user, foreign_key: true
  end
end
