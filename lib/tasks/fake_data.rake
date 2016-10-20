namespace :db do
  desc 'Drop, create, migrate, seed and populate sample data'
  task prepare: [:drop, :create, :migrate, :seed, :populate_sample_data] do
    puts 'Ready to go!'
  end
 #firm_full_name {Faker::Company.name}
 #    firm_short_name {Faker::Company.suffix}
 #   firm_domain "neucom.io"
#   firm_address {Faker::Address.street_address}
  desc 'Populates the database with sample data'
  task populate_sample_data: :environment do
    
    10.times{
        fname =  Faker::Company.name 
        f_short_name = fname[0...8].gsub(/\s+/, "").gsub(",", "")       
        Firm.create!(firm_number: Faker::Number.number(4), firm_full_name: fname, firm_short_name: f_short_name, firm_domain: f_short_name+".com", firm_address: Faker::Address.street_address )
    }
    
    100.times {
    offset =  rand(Firm.count)
    rand_record = Firm.offset(offset).first
    firstname = Faker::Name.first_name
    User.create!(user_id: Faker::Number.number(5), first_name: firstname , last_name: Faker::Name.last_name, firm_number: rand_record.firm_number, short_name: Faker::Name.first_name, j_id: firstname + "@" +rand_record.firm_domain)
    }
  
 
  end
  
  task populate_relationship_data: :environment do      
   25.times {
        rand1 = rand(User.count)
        jid_first = User.offset(rand1).first
    25.times{
        rand2 = rand(User.count)
    if not rand1 == rand2
        jid_second = User.offset(rand2).first
        UserRelationship.create!(jid_from: jid_first.j_id, jid_to: jid_second.j_id, relation_type: 1)
    end
    }
   }
  end
  
    task populate_groups_data: :environment do
    1000.times {
        Group.create!(group_id: Faker::Number.number(5), group_name: Faker::Team.name)
    }
end

    task populate_groupmember_data: :environment do
    Group.all.each do |group|  
        10.times{  
         rand2 =  rand(User.count)
         user =  User.offset(rand2).first
         GroupMember.create!(group_id: group.group_id, member_jid: user.j_id, is_admin: 0)
        }
    end
    end
     
    task populate_lists_data: :environment do
    1000.times {
        rand2 =  rand(User.count)
        user =  User.offset(rand2).first
        BroadcastList.create!(list_id: Faker::Number.number(5), list_name: Faker::Team.name, owner_jid: user.j_id)
    }
    end
    
    task populate_listmember_data: :environment do
    BroadcastList.all.each do |list|  
        10.times{  
         rand2 =  rand(User.count)
         user =  User.offset(rand2).first
         ListMember.create!(list_id: list.list_id, member_jid: user.j_id)
        }
    
    end
    end
end