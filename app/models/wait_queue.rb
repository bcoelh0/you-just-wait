class WaitQueue < ApplicationRecord
  belongs_to :user
  has_many :subscriptions
  has_many :queuers

  before_create :setup_url_slug

  def wait_queue_path
    "/#{url_slug}/wait"
  end

  def subscription_path
    "/#{url_slug}/subscribe"
  end

  private

  def setup_url_slug
    url_slug = Digest::MD5.new.hexdigest
    while WaitQueue.where(url_slug: url_slug).any?
      url_slug = Digest::MD5.new.hexdigest
    end
    self.url_slug = url_slug
  end
end
