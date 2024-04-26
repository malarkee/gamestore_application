# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# 10.times do |x|
#     User.create(email: "#{x}@mail.com", username: "Mister#{x}", password:"password-#{x}", password_confirmation: "password-#{x}")
# end


15.times do |y|

    2.times do

        num = rand(27..36)
        opinion = rand(10)

        reply = rand(0...10)
        while (reply == y)
            reply = rand(0...10)
        end

        if opinion == 0 # hated the game
            Comment.create(user_id: "#{y}", game_id: num, body: "I really hated this game! I never want to play a game like this again")
        
        elsif opinion == 2 # disliked the game
            Comment.create(user_id: "#{y}", game_id: num, body: "This game is just alright! It was interesting enough, but I don't think i'll ever go back to it.")
        
        elsif opinion == 3 or opinion == 9 # liked the game
            Comment.create(user_id: "#{y}", game_id: num, body: "This game had some flaws that kept it from being a truly great game, but otherwise it's pretty good.")
        
        elsif opinion == 5 or opinion == 6 # loved the game
            Comment.create(user_id: "#{y}", game_id: num, body: "I really loved this game! This is a game that i'll come back to again and again!")
        
        elsif opinion == 7 or opinion == 4 # responding to someone elses comment (AGREE)
            Comment.create(user_id: "#{y}", game_id: num, body: "I really couldn't agree more with mister #{reply}!")
        
        elsif opinion == 8 # responding to someone elses comment (DISAGREE)
            Comment.create(user_id: "#{y}", game_id: num, body: "Your opinion on this is so bad mister #{reply}!!!!!!1! you suck")
        
        else    # random comment
            Comment.create(user_id: "#{y}", game_id: num, body: "pepsi cola")
        end

    end
end



# Comment.create(user_id: x, game_id: y, body: "Hello")

# Game.create(
#     title: 'The Witcher 3',
#     desc: 'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. 
#     Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world.',
#     publisher: 'CD PROJECT RED',
#     developer: 'CD PROJECT RED',
#     genre: 'Fantasy',
#     platform: 'PC',
#     age_rating: 'M',
#     release_date: '19 May 2015'
# )

# Game.create(
#     title: 'Portal 2', 
#     desc: 'Portal 2: A mind-bending puzzle game where players wield a portal gun to navigate through test chambers and outsmart 
#     an AI antagonist. With witty dialogue, clever level design, and cooperative multiplayer, it\'s a masterpiece of innovation and humor.',
#     publisher: 'Valve', 
#     developer: 'Valve', 
#     genre: 'Puzzle', 
#     platform: 'PC', 
#     age_rating: 'E10+', 
#     release_date: '18 Apr 2011'
# )

# Game.create(
#     title: 'Mario Kart 8 Deluxe',
#     desc: 'Mario Kart 8 Deluxe: Race into action with iconic Nintendo characters in this fast-paced, multiplayer racing game. 
#     With dazzling graphics, exciting tracks, and a plethora of items to thwart opponents, it\'s the ultimate party experience on wheels.',
#     publisher: 'Nintendo',
#     developer: 'Nintendo EAP',
#     genre: 'Kart Racing',
#     platform: 'Nintendo Switch',
#     age_rating: 'E',
#     release_date: '28 Apr 2017'
# )
