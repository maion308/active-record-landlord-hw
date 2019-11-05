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
    Apartment.create(
        id: 1,
        unit: "1a",
        num_beds: 3,
        num_baths: 1,
        monthly_rent: 3000,
        allow_pets: true,
        sq_ft: 1200,
    )

    Apartment.create(
        id: 2,
        unit: "1b",
        num_beds: 2,
        num_baths: 1,
        monthly_rent: 2500,
        allow_pets: true,
        sq_ft: 1200,
    )

    Apartment.create(
        id: 3,
        unit: "1c",
        num_beds: 3,
        num_baths: 1,
        monthly_rent: 3000,
        allow_pets: true,
        sq_ft: 1200,
    )

# Table name: tenants
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  birth_date :date
#  nickname   :string
#  occupation :string
#  ssn        :integer
#  has_pets   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
# Create at least 9 instances of the Tenant class. At least 5 should belong to an apartment
  
    Tenant.create(
        id: 4,
        first_name: "Joe",
        last_name: "Plumber",
        birth_date: 03/08/1973,
        nickname: "joe",
        occupation: "Plumber",
        ssn: 000000001,
        has_pets: false,
    )

    Tenant.create(
        id: 5,
        first_name: "Joanne",
        last_name: "Kessinger",
        birth_date: 03/08/1984,
        nickname: "Joie",
        occupation: "Dancer",
        ssn: 000000002,
        has_pets: true,
    )

    Tenant.create(
        id: 6,
        first_name: "Kelsey",
        last_name: "Baker",
        birth_date: 03/08/1990,
        nickname: "Kelly",
        occupation: "Accountant",
        ssn: 000000003,
        has_pets: true,
    )

    Tenant.create(
        id: 7,
        first_name: "Mark",
        last_name: "Mcgrath",
        birth_date: 03/08/1983,
        nickname: "MC",
        occupation: "Singer",
        ssn: 000000004,
        has_pets: true,
    )

    Tenant.create(
        id: 8,
        first_name: "Christine",
        last_name: "Collins",
        birth_date: 03/08/1988,
        nickname: "Christy",
        occupation: "Teacher",
        ssn: 000000005,
        has_pets: true,
    )

    Tenant.create(
        id: 9,
        first_name: "Shelly",
        last_name: "James",
        birth_date: 03/08/1971,
        nickname: "CiCi",
        occupation: "Designer",
        ssn: 000000006,
        has_pets: false,
    )

    Tenant.create(
        id: 10,
        first_name: "Steven",
        last_name: "Bernstein",
        birth_date: 03/08/1979,
        nickname: "Steve",
        occupation: "Doctor",
        ssn: 000000007,
        has_pets: false,
    )

    Tenant.create(
        id: 11,
        first_name: "Richard",
        last_name: "Pratt",
        birth_date: 03/08/1986,
        nickname: "Rick",
        occupation: "Dentist",
        ssn: 000000008,
        has_pets: false,
    )

    Tenant.create(
        id: 12,
        first_name: "Michael",
        last_name: "Mcginnes",
        birth_date: 03/08/1964,
        nickname: "Mike",
        occupation: "Owner",
        ssn: 000000009,
        has_pets: false,
    )
# Query for all instances of the Tenant class and store it in a variable
# Query for all instances of the Tenant class that belong to one of the Apartments you created and store it in a variable
# Save the object that you updated to the database
# Update an object using the update method
# Delete one of the objects you've created