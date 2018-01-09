require 'mechanize'
require 'rubygems'

agent = Mechanize.new
puts "Which stock would you like to analyze?"
stock = gets.to_s.chomp.upcase

site = "https://finance.yahoo.com/quote/" + stock + '?p=' +stock
puts site
page = agent.get site
puts page.title
puts page.uri
search_form = page.form_with :name => "p"
puts search_form



#  from  https://finance.yahoo.com/quote/WGO/key-statistics?p=WGO
      # get shares outstanding

# from https://finance.yahoo.com/quote/WGO/financials?p=WGO
    # get total revenue for this year,
    # get total revenue for the previous year
    # get total revenue for the year previous

    # get interest expense for this year
    # get interest expense for the previous year

    # get net income for this year,
    # get net income for the previous year
    # get net income for the year previous

# from https://finance.yahoo.com/quote/WGO/balance-sheet?p=WGO

  # get current assets of this year
  # get total assets of this year

  # get cash and cash equivalents for this year
  # get inventory for this year
  # get total current liabilities for this year
  # get long term debt for this year
  # get total liabilities for ths year

  # calculate tangible equity by taking total stockholder equity - intangible assets - preferred stock) get all of these from balance sheet for the past three years/quarters
