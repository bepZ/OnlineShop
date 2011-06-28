module ArticlesHelper
  
  # Markenname suchen
  def getbrandname(brandId)
    brand = Brand.find_by_id(brandId)    
    return brand.name
  end
  
  # Kategoriename suchen
  def getcategoryname(categoryId)
    category = Category.find_by_id(categoryId)
    return category.name
  end  
end
