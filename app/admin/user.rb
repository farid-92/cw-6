ActiveAdmin.register User do
    permit_params :name, :email, :password, :confirm_password

    form do |f|
      f.inputs do
        f.input :name
        f.input :email
        f.input :password
        f.input :confirm_password
      end
      f.actions
    end

    index do
      selectable_column
      id_column
      column :name do |firstname|
        link_to firstname.name, admin_user_path(firstname)
      end
    column :email
    column :encrypted_password
      actions
    end

    show do
      attributes_table do
        row :name
        row :email
      end
      active_admin_comments
    end

end
