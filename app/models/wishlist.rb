
require 'nokogiri'
require 'open-uri'



class Wishlist < ActiveRecord::Base

	belongs_to :charity
  has_many :items

	def self.do_your_thing(url, wishlist_id)
	
		doc = Nokogiri::HTML(open(url)) 
		p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		
		File.open('heythere.xml', 'w') { |f| f.print(doc) }
		test = doc.css("tr")


		test1 = test[3..-1]
		results = []
		test1.each do |test|
			
			name = test.css(".g-title").first.text
			picture_url = test.css("img").first["src"]
			current_price = test.css(".price-section").first.text
			priority = test.css(".g-priority").first.text
			qty_requested = (test.css(".g-requested").first.text).to_i
			qty_received = (test.css(".g-received").first.text).to_i

			item = Item.new(wishlist_id: wishlist_id, name: name, picture_url: picture_url, current_price: current_price, priority: priority, qty_requested: qty_requested, qty_received: qty_received)

			# results << ((test.css(".g-requested").first.text).to_i).class

			results << item
			
	

		end

	
		# p results
		results
		# test = doc.css("tr img").text

		# # rails_books = doc.css("title")
		# # p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		# # p rails_books

	end

end

#https://www.amazon.com/gp/registry/wishlist/ref=cm_wl_search_3?ie=UTF8&cid=A13XA8P766VNB2
#https://www.amazon.com/gp/registry/wishlist/ref=cm_wl_act_print_v?ie=UTF8&disableNav=1&filter=all&id=24LD6KRG5QJI6&items-per-page=200&layout=standard-print&sort=rank&visitor-view=1
