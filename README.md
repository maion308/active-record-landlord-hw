# Active Record Landlord

## Getting Started

Fork and clone this repo.

Create a new rails api project called landlord with a postgresql database skipping test files:

```shell
rails new landlord --api --skip-git -d postgresql --skip-test
```

Change directories into the Rails app.

Create the database:

```shell
rails db:create
```

## Assignment

### Creating Models

Use Rails model generators ([1](https://guides.rubyonrails.org/getting_started.html#creating-the-article-model), [2](https://richonrails.com/articles/rails-model-generator-shortcuts), [3](https://railsguides.net/advanced-rails-model-generators/)) to create migrations and models for this erd:

![Landlord ERD](https://i.imgur.com/xEizJwh.png)

### Model Declarations

In the models directory, make sure that the apartment and tenant model declarations reflect the correct relationship in `apartment.rb` and `tenant.rb`. See [the docs on associations](https://guides.rubyonrails.org/association_basics.html).

### Writing Seeds

In `db/seeds.rb` (experimenting in the rails console and then copying the working statements into the seeds file is a good strategy):

- Create at least 3 instances of the Apartment class
- Create at least 9 instances of the Tenant class. At least 5 should belong to an apartment
- Query for all instances of the Tenant class and store it in a variable
- Query for all instances of the Tenant class that belong to one of the Apartments you created and store it in a variable
- Update of one of the objects you've created attributes using attribute helper methods
- Save the object that you updated to the database
- Update an object using the update method
- Delete one of the objects you've created

## Submitting

Push your code and make a PR back to this repo.
