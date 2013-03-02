#class DesignController < ApplicationController
#  respond_to :html
#  def range
#    # nuttin
#  end
#end


module Spree
  class DesignController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def range
      #@searcher = Spree::Config.searcher_class.new(params)
      #@searcher.current_user = try_spree_current_user
      #@searcher.current_currency = current_currency
      #@products = @searcher.retrieve_products
      #respond_with(@products)
    end
  end
end

#def angular
#  respond_to do |format|
#    format.html
#    format.json { head :no_content }
#  end
#end