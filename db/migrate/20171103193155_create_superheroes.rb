class CreateSuperheroes < ActiveRecord::Migration[5.1]
  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :power
      t.string :biography
      t.integer :team_id
    end
  end
end
