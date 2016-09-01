class PlayersPopulator < ActiveRestClient::Base
  base_url "http://www.fantasyfootballnerd.com/service/"

  get :all, "/draft-rankings/json/#{ENV["fantasy_nerd_api_key"]}/0/"

  def self.populate_all
    all["DraftRankings"].each do |player|
      p = Player.new
      p.playerId = player.playerId
      p.position = player.position
      p.display_name = player.displayName
      p.fname = player.fname
      p.lname = player.lname
      p.team = player.team
      p.byeweek = player.byeWeek
      p.stn_dev = player.standDev
      p.nerd_rank = player.nerdRank
      p.position_rank = player.positionRank
      p.overall_rank = player.overallRank
      p.save
    end
  end
end
