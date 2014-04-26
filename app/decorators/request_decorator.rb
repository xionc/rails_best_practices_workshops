class RequestDecorator < Draper::Decorator
  delegate_all

  def created_at
    object.created_at.strftime("%A, %B %e")
  end

  def self.collection_decorator_class
    PaginatingDecorator
  end
end