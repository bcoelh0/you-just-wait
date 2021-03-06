class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.references :wait_queues

      t.timestamps
    end
  end
end
