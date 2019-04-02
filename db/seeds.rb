# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create(:title => 'Learn Web Development with Rails',
    :description => 
    %{
        Ruby on Rails Tutorial book and screencast series
        teach you how to develop and deploy real, 
        industrial-strength web applications with Ruby on Rails.
    },
    :image_url => 'rails_book.png',
    :price => 29.99)
  
Product.create(:title => 'The Ruby Programming Language',
    :description =>
    %{
        The Ruby Programming Language is the authoritative guide 
        to Ruby and provides comprehensive coverage 
        of versions 1.8 and 1.9 of the language.
    },
    :image_url => 'ruby_book.jpg',
    :price => 39.99)
User.delete_all
User.create(:name => 'admin',
    :hased_password=>'bf1ef2c764157a95add6303a4a31514dc5af8bbbeb414dbbea954e3e6c514e6a',
    :salt=>'698987809691800.7088423513133063',
    :isadmin=>'0')
    
User.create(:name => 'user01',
    :hased_password=>'619d4048e6291ab5fdaad3ef826e90bdbb753a26d0296b3f8ad55f2a551e6231',
    :salt=>'698988484584000.7130334285100066',
    :isadmin=>'1')