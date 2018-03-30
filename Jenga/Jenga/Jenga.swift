//
//  Jenga.swift
//  Jenga
//
//  Created by Sathyanarayanan V on 10/14/17.
//  Copyright © 2017 Sathyanarayanan V. All rights reserved.
//

import Foundation

class Jenga {
    
    init() {
        answers.shuffle()
    }
    
    func getAnswer(forIndex index: Int) -> String? {
        if answers.count >= index && index > 0 {
            return answers[index - 1].0
        } else {
            return nil
        }
    }
    
    func getExplanation(forIndex index: Int) -> String? {
        if answers.count >= index && index > 0 {
            return answers[index - 1].1
        } else {
            return nil
        }
    }

    fileprivate var answers: [(String, String)] = [
        ("Two Truths and a Lie", "Tell 2 truths and 1 lie. Everyone must guess which was the lie. You drink,"),
        ("Prime suspect ", " For every prime number block picked after this game, drinks"),
        ("Accent ", " You must speak in an accent for the rest of the game"),
        ("Arm Wrestle ", " Arm wrestle the person to your left. Looser drinks"),
        ("Bar Wench ", "  You have to fetch everyone's drinks"),
        ("Blind man ", " Take a block with your eyes closed"),
        ("Bob Dole ", " You can only refer to yourself in the third person for the rest of the game"),
        ("Body guard ", " Pick someone for the rest of the game. They must drink the first of every drink given to you"),
        ("Cursed ", " If you are the first person to pull this, Drink 2. Everytime the block is pulled after this, drink 5."),
        ("Gun show ", " Bear your biceps and flex for everyone. The players next to you, each drink 2 for the view."),
        ("Captain Jenga ", " You are Captian Jenga Announce your name and rank before anything you say for the rest of the game."),
        ("Cast away ", " You can only talk to inanimate object for the rest of the game"),
        ("Embroyo keeper ", " Youngest person drinks"),
        ("Moves like Jagger ", " You have to dance for atleast a min. Pick a partner"),
        ("Date ", " Pick someone to date for the rest of the game and when you drink, they drink. And viceversa"),
        ("Down the hatch ", " Drink for 5 secs"),
        ("Edward scissor hand ", " You must hold 2 butter knifes for the rest of the game and do everything with them"),
        ("Garry Coleman ", " Shortest person drinks"),
        ("Lurch ", " Tallest person drinks"),
        ("Give 3 ", " Make someone drink 3 times"),
        ("Hand switch ", "You can only use your non-dominant hand for the rest of the game"),
        ("Make a rule ", "You make a rule that holds for the rest of the game"),
        ("Moustache ", "Hold your index finger as a moustache upto your mouth for the rest of the game (even when you drink)"),
        ("Moving violation ", " Drink for how many times you have traveled this year"),
        ("No guts no glory ", " You cannot take any center pieces"),
        ("Question master ", " If anyone answers a question you ask them, you drink"),
        ("Rewind ", " Take a block from the top and put it back in the tower. It can't be on the very bottom row"),
        ("Sharing is caring ", " Everyone pours a little bit of their drink into a cup and you have to shoot the concoction"),
        ("Sibling rivalry ", " Drink for every sibling you have"),
        ("Sobriety test ", " Remove another block while drinking"),
        ("The real slim shady ", " You have to stand for the rest of the game"),
        ("Time out ", " Stand with your face in the corner of the room until your next turn."),
        ("T-rex arms ", " You must do everything with T-rex arms for the rest of the game (Elbows touching your sides)"),
        ("Tribal council ", " Everyone votes and the person with most votes, drinks for 5 secs"),
        ("Truth or dare ", " Your pick and everyone comes to a consensus of what you have to do"),
        ("Hrithik or Kangana ", " First, everyone takes a side. Then, whoever are on the opposite side of the player, drinks."),
        ("Wasted education ", " One drink to every year of education, irrelevant to your current job"),
        ("South paw ", " Pull the piece out with your left hand"),
        ("Arm candy ", " Cross arms with the person to your right for the reminder of the game"),
        ("Social ", " Everyone playing takes a sip"),
        ("Screw the NFL kicker ", " Drink one for every letter in your last name"),
        ("Sue Stevens radio DJ ", " For the rest of the game whenever you speak, you must talk into a pretend microphone. If you are caught, you drink"),
        ("Mexican wave ", " All the players do the mexican wave while taking a sip"),
        ("Domino effect ", " Everyone drinks until the person next to them stops"),
        ("Jenga got you good ", " Take six sips"),
        ("Battle of the sexes ", " Everyone to the gender opposite to yours, drinks"),
        ("Rainbow warrior ", " Pick a clour and everyone drinks for every article of clothing in that colour"),
        ("Good times ", " Cheers!"),
        ("Good times ", " Cheers!"),
        ("Good times ", " Cheers!"),
        ("Truth or dare ", " Your pick and everyone comes to a consensus of what you have to do"),
        ("Battle of the sexes ", " Everyone to the gender opposite to yours, drinks"),
        ("Peer pressure ", " Drink one, for each person playing the game"),
        ("Music and Lyrics ", " The next 4 players to the right will ask the player to complete the lyrics of a song. Answer within 5 secs. Loser drinks")
    ]
}


extension Array {
    mutating func shuffle () {
        for i in (0..<self.count).reversed() {
            let ix1 = i
            let ix2 = Int(arc4random_uniform(UInt32(i+1)))
            (self[ix1], self[ix2]) = (self[ix2], self[ix1])
        }
    }
}
