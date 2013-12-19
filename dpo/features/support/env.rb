require "watir-webdriver"
#require "/path/to/site"

module SiteHelper
  def site
    @site ||= (
    Site.new(Watir::Browser.new(:firefox))
    )
  end
end

World(SiteHelper)