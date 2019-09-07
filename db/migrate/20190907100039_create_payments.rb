class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :booking, foreign_key: true
      t.string :status
      t.string :payment_details

      t.timestamps
    end
  end
end
