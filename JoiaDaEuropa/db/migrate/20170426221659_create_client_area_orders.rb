class CreateClientAreaOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :client_area_orders do |t|
      t.timestamp :date
      t.decimal :total
      t.references :state, index: false, references: ClientArea::OrderState
      t.timestamps
    end
  end
end
