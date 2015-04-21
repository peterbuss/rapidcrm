class AddDateToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :date, :date
  end
end
