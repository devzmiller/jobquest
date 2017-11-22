class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :job_title
      t.text :notes
      t.date :first_contact
      t.date :first_response
      t.date :followup
      t.date :second_response
      t.date :coffee_date
      t.timestamps
    end
  end
end
