class Restaurant < ApplicationRecord
  belongs_to :user

  #validations

  # unique instance methods
  # FAT MODELS SKINNY CONTROLLERS
  # def menu_total
  #   self.menu.items.sum
  # end

  def describe_owner
    "The owner of this restaurant is available at #{self.user.email}"
  end
end


# @restaurant.describe_owner
