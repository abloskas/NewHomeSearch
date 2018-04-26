namespace :app do
    desc "Scrape homes"
    task :scrape_homes => :environment do
      Scraper.new.scrape
    end
  end