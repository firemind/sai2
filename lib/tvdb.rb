require 'httparty' unless defined?(HTTParty)
class Tvdb
  include HTTParty
  format :xml
  base_uri "http://www.thetvdb.com/api/"
  headers 'Accept-encoding' => 'gzip'
  class_attribute :language
  self.language = :en
  def self.get_series(title)
    result = self.get("/GetSeries.php", :query => { :seriesname => title, :language => self.language })['Data']
    return result
    #puts result.inspect
  end
  def self.find_series_by_id(series_id)
    series_url = "070BA22DA6E378AA/series/#{series_id}"
    series_url << "/all"
    series_url << "/#{self.language}.xml"
    puts series_url
    result = self.get(series_url)['Data']
    return result
  end

end

