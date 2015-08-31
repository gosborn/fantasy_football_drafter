class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :playerId
      t.string :position
      t.string :display_name
      t.string :fname
      t.string :lname
      t.string :team   
      t.integer :byeweek
      t.float :stn_dev
      t.float :nerd_rank
      t.float :position_rank
      t.float :overall_rank
      t.boolean :drafted, default: false
      t.string :fantasy_team

      t.timestamps null: false
    end
  end
end
