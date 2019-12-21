class Spree::StaticController < Spree::HomeController
  def barcode
    # puts "\n\n\n\n\nSCANNED THIS #{params[:code]}\n\n\n\n\n"
    product = Spree::Product.find_by!(barcode: params[:barcode])
    redirect_to product ? spree.product_path(product.id) : scanner_path, flash: { error: "product not found"}
  end
end