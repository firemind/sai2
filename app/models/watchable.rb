class Watchable < ActiveRecord::Base
  has_many :torrents
  has_and_belongs_to_many :actors
end
