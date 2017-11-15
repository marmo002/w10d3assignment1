require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @barca = Team.new("FCBarcelona", "Pros", ["Messi", "Iniesta", "Pique"])
  end

  def test_check_hash_returned
    assert_equal({:team_name=>"FCBarcelona", :level=>"Pros", :points=>0}, @barca.to_hash)
  end

end
