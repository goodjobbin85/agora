class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.text :description
      t.string :phone
      t.integer :year_established

      t.timestamps
    end
  end
end
