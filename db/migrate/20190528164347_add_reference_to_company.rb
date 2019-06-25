class AddReferenceToCompany < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :service, foreign_key: true
  end
end
