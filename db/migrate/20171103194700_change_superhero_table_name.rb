class ChangeSuperheroTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :superheroes, :superheros
  end
end
