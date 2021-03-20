class CreateQueuers < ActiveRecord::Migration[6.0]
  def change
    create_table :queuers do |t|
      t.string :cookie_id

      t.references :wait_queue

      t.timestamps
    end
  end
end
