ActiveAdmin.register Gallery do
  permit_params :title, :image

  form do |f|
    f.inputs do
      f.input :title
      f.input :image, as: :file, hint: image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :image do |photo|
      image_tag photo.image.url(:thumb)
    end
    column :title do |photo|
      link_to photo.title, admin_gallery_path(photo)
    end
    actions
  end

  show do
    attributes_table do
      row :image do |photo|
        image_tag photo.image.url(:medium)
      end
      row :title
    end
    active_admin_comments
  end


end
