require 'test_helper'

class Quotes500Test < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Quotes500::VERSION
  end

# Test for QuoteModel
  # def test_createQuote
  #   @qote = Quotes500::Quote.new("William Ewart Gladstone", "http://img.quotery.com/pictures/2014/05/william-gladstone-150x150.jpg", "We look forward to the time when the Power of Love will replace the Love of Power. Then will our world know the blessings of peace.", 1)
  #   assert @qote
  #   assert_equal "William Ewart Gladstone", @qote.author
  #   assert_equal "http://img.quotery.com/pictures/2014/05/william-gladstone-150x150.jpg", @qote.imgUrl
  #   assert_equal "We look forward to the time when the Power of Love will replace the Love of Power. Then will our world know the blessings of peace.", @qote.content
  #   assert_equal 1, @qote.rank
  # end

  # Test for HTMLParser

  # Retrieve quotes data from a html source, converting them into a array containing hashes
  def test_retrieveQuotesFromPage
    parser = Quotes500::HTMLParser.new(Quotes500::BASE_URL, 1)
    parser.retrieveQuotes
    assert_equal 10, parser.quotes.length
  end

  def test_getTotalQuotes
    assert Quotes500::allQuotes(5)
    assert_equal 50, Quotes500::allQuotes(5).length
  end

  def test_convertToJSON
    json = Quotes500.convertToJSON
    assert json
  end

  def test_generateJSON
      Quotes500.generateJSON
  end

  def test_getQuoteSet
    assert_equal 10, loadLocalHtmlSource.css('div.blog-quote').count
  end

  def test_getOneAuthorName
    author = loadLocalHtmlSource.css('div.blog-quote__author')[0].text.strip
    assert_equal "William Ewart Gladstone", author
  end

  def test_getQuoteRank
    assert_equal "1", loadLocalHtmlSource.css('div.blog-quote__count span')[0].text
  end

  def test_getAuthorImageUrl
    assert_equal "http://img.quotery.com/pictures/2014/05/william-gladstone-150x150.jpg", loadLocalHtmlSource.css('div.blog-quote__author img')[0]['src'].strip
  end

  def test_getQuoteContent
    assert_equal "We look forward to the time when the Power of Love will replace the Love of Power. Then will our world know the blessings of peace.", loadLocalHtmlSource.css('div.blog-quote__content')[0].text.strip
  end

  def test_convertToJSON
    assert Quotes500::convertToJSON
  end

  def loadLocalHtmlSource
    source = File.open(File.dirname(__FILE__)+"/source.html") {
      |f| Nokogiri::HTML(f)
    }
    return source
  end
end
