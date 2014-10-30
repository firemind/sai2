FactoryGirl.define do
  factory :torrent do
    enclosure_url Random.new.rand
    name "test_torrent"
  end

  factory :watchable do
    name "test_watchable"
  end

  factory :episode

  factory :serie do
    name "test_serie"
  end

  factory :movie

  factory :actor do
    name "test_actor"
  end

end
