class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.references :user, foreign_key: true
      t.string :payment_type
      t.string :payment_information

      t.timestamps
    end
  end
end
