module CurrentCart
  private
  #Sets the cart in accordance to the session of the user, this is so the cart wont be mismatched within users.
  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
