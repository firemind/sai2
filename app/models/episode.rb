class Episode < ActiveRecord::Base
  belongs_to :serie
  belongs_to :watchable
end
