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

Game.create(
    title: 'The Witcher 3',
    desc: 'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. 
    Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world.',
    publisher: 'CD PROJECT RED',
    developer: 'CD PROJECT RED',
    genre: 'Fantasy',
    platform: 'PC',
    age_rating: 'M',
    release_date: '19 May 2015'
)

Game.create(
    title: 'Portal 2', 
    desc: 'Portal 2: A mind-bending puzzle game where players wield a portal gun to navigate through test chambers and outsmart 
    an AI antagonist. With witty dialogue, clever level design, and cooperative multiplayer, it\'s a masterpiece of innovation and humor.',
    publisher: 'Valve', 
    developer: 'Valve', 
    genre: 'Puzzle', 
    platform: 'PC', 
    age_rating: 'E10+', 
    release_date: '18 Apr 2011'
)

Game.create(
    title: 'Mario Kart 8 Deluxe',
    desc: 'Mario Kart 8 Deluxe: Race into action with iconic Nintendo characters in this fast-paced, multiplayer racing game. 
    With dazzling graphics, exciting tracks, and a plethora of items to thwart opponents, it\'s the ultimate party experience on wheels.',
    publisher: 'Nintendo',
    developer: 'Nintendo EAP',
    genre: 'Kart Racing',
    platform: 'Nintendo Switch',
    age_rating: 'E',
    release_date: '28 Apr 2017'
)
