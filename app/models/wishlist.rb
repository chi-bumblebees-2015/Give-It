
require 'nokogiri'
require 'open-uri'



class Wishlist < ActiveRecord::Base

	belongs_to :charity
  has_many :items

	def self.do_your_thing(url, wishlist_id)
	
		doc = Nokogiri::HTML(open(url)) 
		p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		# test = doc.css(" td a-text-left g-title")
		# test = doc.css("h5").text
		test = doc.css("tr")
		test1 = test[3..-1]
		results = []
		test1.each do |test|
			results << test.css(".g-received").first.text
			# name = test.css(".g-title").first.text
			# picture = test.css("img").first["src"]
			# price = test.css(".price-section").first.text
			# priority = test.css(".g-priority").first.text
			# qty_requested = test.css(".g-requested").first.text
			# qty_received = test.css(".g-received").first.text

			# item = Item.new(name: )

		end

		# item title = test.css(".g-title").first.text
		# link to image = test.css("img").first["src"]
		# price = test.css(".price-section").first.text
		# qty_requested = test.css(".g-requested").first.text
		# qty_received = test.css(".g-received").first.text
		# priority = test.css(".g-priority").first.text


		    # t.references :wishlist
      # t.string :name
      # t.integer :creation_price
      # t.integer :current_price
      # t.string :priority
      # t.string :rating
      # t.integer :number_ratings
      # t.string :comments
      # t.datetime :date_added
      # t.string :picture_url
      # t.string :link

		# # <tr> <td class="a-text-center a-align-center g-image"> <img width="42" height="42" alt="" border="0" src="http://ecx.images-amazon.com/images/I/41eXhc8daqL._SL500_SS42_.jpg"> </td> <td class="a-text-left g-title"> <h5>Amazon Gift Card - Print</h5> <span> </span> <span> </span> </td> <td class="a-text-left g-comments a-hidden"> </td> <td class="a-text-left g-price price-section"> <span id="itemPrice_I38SRFWEYRL90T"> $50.00 </span> </td> <td class="a-text-left g-requested"> 1 </td> <td class="a-text-left g-received"> 0 </td> <td class="a-text-left g-priority a-hidden"> Medium </td> </tr>
		results
		# test = doc.css("tr img").text

		# # rails_books = doc.css("title")
		# # p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		# # p rails_books
		# File.open('heythere.xml', 'w') { |f| f.print(doc.to_xml) }

	end

end

#https://www.amazon.com/gp/registry/wishlist/ref=cm_wl_search_3?ie=UTF8&cid=A13XA8P766VNB2
#https://www.amazon.com/gp/registry/wishlist/ref=cm_wl_act_print_v?ie=UTF8&disableNav=1&filter=all&id=24LD6KRG5QJI6&items-per-page=200&layout=standard-print&sort=rank&visitor-view=1
