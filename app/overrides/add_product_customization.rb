Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_customization_button",
                     :disabled => false,
                     :insert_after => %q{[data-hook='product_images']},
                     #:text => "TEST - HELLO!")
                     :partial => "spree/products/customize_button")