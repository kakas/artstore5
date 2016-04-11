module ProductsHelper

  def render_product_photo(product, photo_size)
    if product.photo.present?
      case photo_size
      when 'thumb' then image_tag product.photo.image.thumb.url, class: "thumbnail"
      when 'medium' then image_tag product.photo.image.medium.url, class: "thumbnail"
      end
    else
      case photo_size
      when 'thumb' then size = 200
      when 'medium' then size = 400
      else size = 800
      end

      image_tag "http://placehold.it/#{size}x#{size}&text=No Pic", class: "thumbnail"
    end
  end

end
