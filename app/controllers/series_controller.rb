class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def fetch
    if(params["name"].blank?)
      flash[:error] = "no name given"
      redirect_to :back
    else
      data = Tvdb.get_series(params["name"])
      if data["Series"].is_a? Array
        serie = data["Series"].first
      else
        serie = data["Series"]
      end
      s = Serie.where(name: serie["SeriesName"]).first_or_create
      episodes = Tvdb.find_series_by_id(serie["seriesid"])["Episode"]
      episodes.each do |ep|
        w = Watchable.new
        w.firstaired = ep['FirstAired']
        w.name = ep["EpisodeName"] || "not known"
        w.save
        e = s.episodes.build(season_nr: ep['Combined_season'], watchable: w)
        e.save
      end
      redirect_to s
    end
  end

  def show
    @serie = Serie.find(params["id"])
  end
end
