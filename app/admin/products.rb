ActiveAdmin.register Product do
   permit_params :name, :price, :image, :category_id, :status_id, :product_image

   form do |f|
    f.semantic_errors # Shows errors on :base
    f.inputs # Builds an input field for every attribute
     f.inputs do
       f.input :product_image, as: :file
     end
    f.actions # Adds the 'Submit and 'Cancel' buttons
   end

end
