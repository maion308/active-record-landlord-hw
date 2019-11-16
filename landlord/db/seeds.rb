# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Table name: apartments
#
#  id           :integer          not null, primary key
#  unit         :string
#  num_beds     :integer
#  num_baths    :integer
#  monthly_rent :integer
#  allow_pets   :boolean
#  sq_ft        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

# Create at least 3 instances of the Apartment class

@building = Building.create!({
    address: "505 Park Avenue", 
    num_floors: 12})

@apartment_1_a =
    Apartment.create!({
        building: @building,
        unit: "1a",
        num_beds: 3,
        num_baths: 1,
        monthly_rent: 3000,
        allow_pets: true,
        sq_ft: 1200
    }
    )


@apartment_12_j =
    Apartment.create({
        building: @building,
        unit: "12j",
        num_beds: 2,
        num_baths: 1,
        monthly_rent: 2500,
        allow_pets: true,
        sq_ft: 1200

    }
    )

@apartment_9_e =
    Apartment.create({
        building: @building,
        unit: "9e",
        num_beds: 3,
        num_baths: 1,
        monthly_rent: 3000,
        allow_pets: true,
        sq_ft: 1200
    }
    )

@apartment_4_g =
    Apartment.create({
        building: @building,
        unit: "4g",
        num_beds: 3,
        num_baths: 1,
        monthly_rent: 3000,
        allow_pets: true,
        sq_ft: 1200
    }
    )

# # Table name: tenants
# #
# #  id         :integer          not null, primary key
# #  first_name :string
# #  last_name  :string
# #  birth_date :date
# #  nickname   :string
# #  occupation :string
# #  ssn        :integer
# #  has_pets   :boolean
# #  created_at :datetime         not null
# #  updated_at :datetime         not null
# # Create at least 9 instances of the Tenant class. At least 5 should belong to an apartment
  
    Tenant.create!(
        apartment: @apartment_1_a,  #here needs to reference the appt obj
        first_name: "Joe",
        last_name: "Plumber",
        birth_date: 44.year.ago,
        nickname: "joe",
        occupation: "Plumber",
        ssn: 000000001,
        has_pets: false,
    )

# apt = puts Tenant.apartment
# puts apt

    Tenant.create(
        apartment: @apartment_12_j,
        first_name: "Joanne",
        last_name: "Kessinger",
        birth_date: 27.year.ago,
        nickname: "Joie",
        occupation: "Dancer",
        ssn: 000000002,
        has_pets: true,
    )

    Tenant.create(
        apartment: @apartment_9_e,
        first_name: "Kelsey",
        last_name: "Baker",
        birth_date: 24.year.ago,
        nickname: "Kelly",
        occupation: "Accountant",
        ssn: 000-00-0003,
        has_pets: true,
    )

    Tenant.create(
        apartment: @apartment_4_g,
        first_name: "Mark",
        last_name: "Mcgrath",
        birth_date: 38.year.ago,
        nickname: "MC",
        occupation: "Singer",
        ssn: 000-00-0004,
        has_pets: true,
    )

    Tenant.create(
        apartment: @apartment_12_j,
        first_name: "Christine",
        last_name: "Collins",
        birth_date: 28.year.ago,
        nickname: "Christy",
        occupation: "Teacher",
        ssn: 000-00-0005,
        has_pets: true,
    )

    Tenant.create(
        apartment: @apartment_12_j,
        first_name: "Shelly",
        last_name: "James",
        birth_date: 26.year.ago,
        nickname: "CiCi",
        occupation: "Designer",
        ssn: 000-00-0006,
        has_pets: false,
    )

    Tenant.create(
        apartment: @apartment_4_g,
        first_name: "Steven",
        last_name: "Bernstein",
        birth_date: 25.year.ago,
        nickname: "Steve",
        occupation: "Doctor",
        ssn: 000-00-0007,
        has_pets: false,
    )

    Tenant.create(
        apartment: @apartment_4_g,
        first_name: "Richard",
        last_name: "Pratt",
        birth_date: 55.year.ago,
        nickname: "Rick",
        occupation: "Dentist",
        ssn: 000-00-2008,
        has_pets: false,
    )

    Tenant.create(
        apartment: @apartment_1_a,
        first_name: "Michael",
        last_name: "Mcginnes",
        birth_date: 42.year.ago,
        nickname: "Mike",
        occupation: "Owner",
        ssn: 000-00-1009,
        has_pets: false,
    )
# # Query for all instances of the Tenant class and store it in a variable
@all_tenants = Tenant.all
p @all_tenants
# Query for all instances of the Tenant class that belong to one of the Apartments you created and store it in a variable
@created_tenants = Tenant.where(apartment_id: 4..12)
# Save the object that you updated to the database
@obj1 = Apartment.find(2)
p @obj1.num_baths = 2
@obj1.save
# Update an object using the update method
@obj2 = Apartment.find(3)
@obj2.update(num_beds: 2)
# Delete one of the objects you've created
Tenant.find(3).destroy