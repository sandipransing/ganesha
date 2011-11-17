class AddUserFields < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :gender, :string
    add_column :users, :birth_date, :date
    add_column :users, :birth_place, :string
    add_column :users, :birth_time, :string
    add_column :users, :weight, :string
    add_column :users, :height, :string
    add_column :users, :nakshatra, :string   
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :cast, :string
    add_column :users, :nadi, :string
    add_column :users, :gan, :string
    add_column :users, :ras, :string     
    add_column :users, :charan, :string
    add_column :users, :gotra_and_devak, :string
    add_column :users, :diet, :string
    add_column :users, :education, :string
    add_column :users, :occupation, :string
    add_column :users, :income, :string
    add_column :users, :personality, :string
    add_column :users, :complexion, :string
    add_column :users, :spectacles, :boolean
    add_column :users, :contact_lenses, :boolean
    add_column :users, :mangal, :boolean
    add_column :users, :blood_group, :string
    add_column :users, :hobbies, :string
    add_column :users, :marital_status, :string 
    add_column :users, :physical_disabilities, :boolean
    add_column :users, :intercast_marrige, :boolean
    add_column :users, :father, :string
    add_column :users, :parents_full_name, :string   
    add_column :users, :mother, :string
    add_column :users, :mothers_name, :string
    add_column :users, :parent_occupation, :string
    add_column :users, :permanent_address, :string
    add_column :users, :brothers, :integer
    add_column :users, :married_brothers, :integer
    add_column :users, :sisters, :integer
    add_column :users, :married_sisters, :integer   
    add_column :users, :mama_name, :string

    add_index :users, :gender
    add_index :users, :cast
    add_index :users, :education
    add_index :users, :occupation
    add_index :users, :income
    add_index :users, :city
    add_index :users, :state
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :middle_name
    remove_column :users, :gender
    remove_column :users, :birth_date
    remove_column :users, :birth_place
    remove_column :users, :birth_time
    remove_column :users, :weight
    remove_column :users, :height
    remove_column :users, :nakshatra   
    remove_column :users, :address
    remove_column :users, :city
    remove_column :users, :state
    remove_column :users, :cast
    remove_column :users, :nadi
    remove_column :users, :gan
    remove_column :users, :ras     
    remove_column :users, :charan
    remove_column :users, :gotra_and_devak
    remove_column :users, :diet  
    remove_column :users, :education
    remove_column :users, :occupation
    remove_column :users, :income  
    remove_column :users, :personality     
    remove_column :users, :complexion  
    remove_column :users, :spectacles 
    remove_column :users, :contact_lenses
    remove_column :users, :mangal
    remove_column :users, :blood_group   
    remove_column :users, :hobbies
    remove_column :users, :marital_status  
    remove_column :users, :physical_disabilities 
    remove_column :users, :intercast_marrige   
    remove_column :users, :father  
    remove_column :users, :parents_full_name   
    remove_column :users, :mother
    remove_column :users, :mothers_name  
    remove_column :users, :parent_occupation   
    remove_column :users, :permanent_address
    remove_column :users, :brothers    
    remove_column :users, :married_brothers  
    remove_column :users, :sisters
    remove_column :users, :married_sisters   


    remove_index :users, :gender
    remove_index :users, :caste
    remove_index :users, :education
    remove_index :users, :occupation
    remove_index :users, :income
    remove_index :users, :city
    remove_index :users, :state
  end
end
