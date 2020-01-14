class CreateAnsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ansers do |t|
      t.text  :anser,                  null: false #答え
      t.timestamps
    end
  end
end
