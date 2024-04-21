# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(email: 'johndoe@email.com',
    username: 'John',
    password: 'password',
    password_confirmation: 'password',
    role: 1)

User.create(email: 'kk@slider.com',
    username: 'kk_slider',
    password: 'slider',
    password_confirmation: 'slider',
    role: 1)

User.create(email: 'george@example.com',
    username: 'george',
    password: 'password',
    password_confirmation: 'password')

User.create(email:  'ethanl@mail.com',
    username: 'ethan',
    password: 'password',
    password_confirmation: 'password')

Game.create(title: 'The Witcher 3',
desc: 'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world.',
publisher: 'CD PROJECT RED',
developer: 'CD PROJECT RED',
genre: 'Fantasy',
platform: 'PC',
age_rating: 'M')