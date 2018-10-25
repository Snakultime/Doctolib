class AddNameToSpecialty < ActiveRecord::Migration[5.2]
  def change
      add_column :specialties, :name, :string
  end
end
