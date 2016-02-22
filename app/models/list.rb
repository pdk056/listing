class List < ActiveRecord::Base

  def self.search(search, category, city, region, bedrooms)

    # if search
    #    where('title LIKE ? OR city LIKE ? OR region LIKE ?', "%#{search}%" , "%#{search}%", "%#{search}%")
    # else
    #   all
    # end



  #   if category
  #     where('category LIKE ?', "%#{category}%")
  #   else
  # all
  #   end

    return all unless search.present? || category.present? || city.present? || region.present? || bedrooms.present?
    where (['title LIKE ? AND category LIKE ? AND city LIKE ? AND region LIKE ? AND bedrooms LIKE ?', "%#{search}%", "%#{category}%" , "%#{city}%", "%#{region}%", "%#{bedrooms}%"])
end
end
