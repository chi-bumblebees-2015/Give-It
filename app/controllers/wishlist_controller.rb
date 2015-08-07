class WishlistController < ApplicationController

	def index

			@items = Wishlist.do_your_thing("http://www.amazon.com/gp/registry/wishlist/ref=cm_wl_act_print_v?ie=UTF8&disableNav=1&filter=all&id=3AW1BUYSY69G5&items-per-page=200&layout=standard-print&sort=date-added&visitor-view=1")

	end
end
