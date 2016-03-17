class Scraping
  def self.movie_urls
    puts 'get movies link URL'
    require 'mechanize'

      agent = Mechanize.new
      page = agent.get("http://eiga.com/now/")
      elements = page.search('.m_unit h3 a')

         elements.each do |ele|
       puts ele.inner_text
     end
  end

  def self.get_product(link)
    puts 'get movie information'
    # ここに処理を書く
  end
end