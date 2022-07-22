class AdduserToadds < ActiveRecord::Migration[6.1]
  def change
    add_reference :adds, :user, index: true
    
  end
end
