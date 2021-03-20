class RemoveUrlsFromWaitQueue < ActiveRecord::Migration[6.0]
  def change
    remove_column :wait_queues, :link_queue
    remove_column :wait_queues, :link_subscribe
  end
end
