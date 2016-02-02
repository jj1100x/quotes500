require "quotes500/version"
# require "nokogiri"

module Quotes500
  BASE_URL = "http://www.quotery.com/lists/top-500-greatest-quotes-of-all-time/"

  class Quote
    attr_reader :author, :imgUrl, :content, :rank
    def initialize(author, imgUrl, content, rank)
      @author = author
      @imgUrl = imgUrl
      @content = content
      @rank = rank
    end
  end

# HTMLParser loads a html source file from url, parsing data you need
#
  class HTMLParser
    require "open-uri"
    SELECTOR_AUTHOR = "div.blog-quote__author"
    SELECTOR_AUTHOR_IMG_URL = "div.blog-quote__author img"
    SELECTOR_RANK = "div.blog-quote__count span"
    SELECTOR_QUOTE = "div.blog-quote__content"

    attr_reader :page, :count, :targetSelector, :quotes
    def initialize(url, pageNumber)

      @document = Nokogiri::HTML(open(url+"#{pageNumber}/"))
      @page = pageNumber
      @count = @document.css('div.blog-quote').count
      @targetSelector = @document.css('blog-posts')
      @quotes = []
    end
    # Retrieve 10 quotes from one html source
    # return an array containg hashes
    def retrieveQuotes
      if @targetSelector.respond_to?("css")
        @count.times do |i|
          author = @document.css(SELECTOR_AUTHOR)[i].text.strip
          if @page > 1
            rank = @document.css(SELECTOR_RANK)[i].text.to_i
          else
            rank = @document.css(SELECTOR_RANK)[i].text.to_i
          end

          content = @document.css(SELECTOR_QUOTE)[i-0].text.strip
          url = @document.css(SELECTOR_AUTHOR_IMG_URL)[i-0]['src'].strip
          quote = {:author => author, :rank => rank, :content => content, :imageSrc => url}
          @quotes << quote
        end
      else
        puts "no"
      end
    end
  end

  # TOTAL_PAGE = 20

  def self.allQuotes(quoteSet)
    require 'json'
    totalQuotes = []
    quoteSet.times do |i|
      page = i+1
      parser = HTMLParser.new(BASE_URL, page)
      parser.retrieveQuotes
      totalQuotes.concat(parser.quotes)
    end
    return totalQuotes
  end

  def self.convertToJSON(set)
    require 'json'
    rootObj = {:quotes => self.allQuotes(set)}
    # json = self.allQuotes.to_json
    json = JSON.pretty_generate(rootObj)
    return json
  end

  def self.generateJSON(quoteSet)
    File.open("temp.json", "w") do |f|
      f.write(self.convertToJSON(quoteSet))
    end
  end

  def self.execute(quoteSet)
    self.generateJSON(quoteSet)
  end

  def self.createTargetUrl
    return BASE_URL+"1/"
  end

  def self.loadPage
    page = Nokogiri::HTML(open(self.createTargetUrl))
    return page
  end

  def self.getQuoteSet
    pageSource = self.loadPage
    quoteDiv = pageSource.css('div.blog-quote').count
  end
end
