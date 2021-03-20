class CreateWaitQueues < ActiveRecord::Migration[6.0]
  def change
    create_table :wait_queues do |t|
      t.string :name
      t.text :description
      t.string :destination
      t.string :link_queue
      t.string :link_subscribe

      t.references :user

      t.timestamps
    end
  end
end
