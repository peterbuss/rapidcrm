class RemoveBadoneFromLeads < ActiveRecord::Migration
  def change
    remove_column :leads, :badone
  end
end
