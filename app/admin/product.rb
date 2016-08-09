ActiveAdmin.register Product do
 
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#permit_params [:name, :price], category_attributes: [:name]
permit_params [:name, :price,:released_at,:category_id]
#belongs_to :category
scope :unreleased
index do 
	column :name 
	column :category
	column  :released_at
	column	:price, :sortable => :price do |product|
	div :class => "price" do
	 number_to_currency product.price
	end
end
actions
end

end
