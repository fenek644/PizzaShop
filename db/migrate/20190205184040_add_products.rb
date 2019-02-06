class AddProducts < ActiveRecord::Migration[5.2]
  def change

    Product.create :title => 'Hawaiian',
      :description => "This is Hawaiian pizza",
      :price => 350,
      :size => 30,
      :is_spicy => false,
      :is_veg => false,
      :is_best_offer => false ,
      :path_to_image => "/images/hawaiian.jpg"

    Product.create :title => 'Cheese',
    :description => "This is cool Cheeze pizza",
    :price => 300,
    :size => 30,
    :is_spicy => false,
    :is_veg => true,
    :is_best_offer => false ,
    :path_to_image => "/images/cheese.jpg"

    Product.create :title => 'Chili',
    :description => "This is wonderful Chili pizza",
    :price => 350,
    :size => 30,
    :is_spicy => true,
    :is_veg => false,
    :is_best_offer => true ,
    :path_to_image => "/images/chili.jpg"

  end
end
