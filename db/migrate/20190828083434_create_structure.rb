class CreateStructure < ActiveRecord::Migration[6.0]
    def self.up
        create_table :users do |t|
          t.timestamps null:false
          t.string :first_name
          t.string :last_name
          t.string :login, null: false
          
        end
        
        create_table :clock_events do |t|
          t.string :clocktype, null:false
          t.datetime :time, null:false
          t.belongs_to :user, null: false, foreign_key: true
          t.timestamps  null: false
      end
    
      def self.down
        drop_table :users
        drop_table :clock_events
      end
    end
  end
  
  
  