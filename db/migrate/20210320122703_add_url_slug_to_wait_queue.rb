class AddUrlSlugToWaitQueue < ActiveRecord::Migration[6.0]
  def change
    add_column :wait_queues, :url_slug, :string
  end
end
