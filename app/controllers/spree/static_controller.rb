class Spree::StaticController < Spree::HomeController

  def barcode
    product = Spree::Product.find_by!(barcode: params[:barcode])
    
    if !product 
      redirect_to spree.scanner_path, flash[:error] = "Cant' find product"
    else
      render json: product.id
    end
  end
end



