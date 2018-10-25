class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_reference :appoitments, :patient, foreign_key: true
    add_reference :appoitments, :doctor, foreign_key: true
  end
end
