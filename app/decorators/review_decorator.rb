class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    "#{user.firstname} #{user.lastname}"
  end

  def product_name
    product.title
  end

  def date
    created_at.strftime("%d-%m-%Y")
  end
end
