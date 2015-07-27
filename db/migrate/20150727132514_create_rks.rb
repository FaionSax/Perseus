class CreateRks < ActiveRecord::Migration
  def change
    create_table :rks do |t|
      # Global_org_rk
      t.string  :name_org_rk
      t.integer :ogrn_org_rk, limit: 13
      t.integer :inn_org_rk, limit: 12
      t.integer :kpp_org_rk, limit: 9
      t.boolean :astral_ok_rk
      # Address_ur_org_rk
      t.integer :index_ur_addr_org_rk, limit: 6
      t.string  :obl_ur_addr_org_rk, limit: 50
      t.string  :city_ur_addr_org_rk, limit: 50
      t.string  :str_ur_addr_org_rk, limit:50
      t.string  :home_ur_addr_org_rk, limit:50
      # Address_fak_org_rk
      t.integer :index_fak_addr_org_rk, limit: 6
      t.string  :obl_fak_addr_org_rk, limit: 50
      t.string  :city_fak_addr_org_rk, limit: 50
      t.string  :str_fak_addr_org_rk, limit: 50
      t.string  :home_fak_addr_org_rk, limit: 50
      # Person_org_rk
      t.string  :family_person_org_rk, limit: 50
      t.string  :name_person_org_rk, limit: 50
      t.string  :lastname_person_org_rk, limit: 50
      t.string  :job_person_org_rk, limit: 50
      t.string  :position_job_person_org_rk, limit: 50


      
        
        t.timestamps null: false
    end
  end
end
