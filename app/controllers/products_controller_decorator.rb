#module Spree
#  class ProductsController < Spree::BaseController
module Spree
  ProductsController.class_eval do
    # Do we need this?
    before_filter :load_product, :only => [:customize, :show]     # loads product data for the customize method
    #
      def customize
        return unless @product

        @variants = @product.variants_including_master.active(current_currency).includes([:option_values, :images])
        @product_properties = @product.product_properties.includes(:property)

        referer = request.env['HTTP_REFERER']
        if referer
          begin
            referer_path = URI.parse(request.env['HTTP_REFERER']).path
              # Fix for #2249
          rescue URI::InvalidURIError
            # Do nothing
          else
            if referer_path && referer_path.match(/\/t\/(.*)/)
              @taxon = Taxon.find_by_permalink($1)
            end
          end
        end

        respond_with(@product)
      end
    end
end