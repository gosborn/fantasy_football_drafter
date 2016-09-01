class PlayersController < ApplicationController
  def index
  end

  def drafted
    @player = Player.find(params[:player][:player_id])
    @player.drafted = true
    @player.fantasy_team = 'mine'
    @player.save
  end

  def show_mine
  end

  def show_rb
  end

  def show_wr
  end

  def show_te
  end

  def show_qb
  end

  def show_k
  end

  def show_undrafted
  end

  def update
    @player = Player.find(params[:player][:player_id])
    @player.drafted = true
    @player.save
  end
end
