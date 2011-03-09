class Animal < ActiveRecord::Base
  belongs_to :category

  def gender
    # doesn't work ???
    if female == true
      "female"
    else
      "male"
    end
  end

end
