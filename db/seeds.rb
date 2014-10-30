# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'factory_girl_rails'

#ActiveRecord::Base.connection.execute "truncate series"
Episode.all.destroy_all
Watchable.all.destroy_all
Serie.all.destroy_all


10.times do
  serie = FactoryGirl.create :serie
  20.times do
   watchable = FactoryGirl.create :watchable
   episode = FactoryGirl.create :episode, :serie => serie, :watchable => watchable
  end
end

60.times do
  torrent = FactoryGirl.create :torrent, :watchable => Watchable.all.sample
end

40.times do
  actor = FactoryGirl.create :actor
  actor.watchables << Watchable.all.sample
end


