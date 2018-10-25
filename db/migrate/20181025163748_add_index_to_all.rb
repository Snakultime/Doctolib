class AddIndexToAll < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :city, foreign_key: true
    add_reference :patients, :city, foreign_key: true
    add_reference :appoitments, :city, foreign_key: true
  end
end
