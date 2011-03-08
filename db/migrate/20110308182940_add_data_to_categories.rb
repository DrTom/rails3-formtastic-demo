class AddDataToCategories < ActiveRecord::Migration
  def self.up

    [ 
      {:name => "Fish",   :description => "blu blu blu"},
      {:name => "Monkey", :description => "climbs from tree to tree"},
    ].each do |attributes|
      Category.find_or_create_by_name(attributes)
    end

  end

  def self.down
  end
end
