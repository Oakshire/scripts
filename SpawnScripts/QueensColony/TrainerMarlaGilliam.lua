--[[
    Script Name    : SpawnScripts/QueensColony/TrainerMarlaGilliam.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Marla Gilliam dialog
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good001.mp3", "", "", 4073343319, 3363307823, Spawn)
    AddConversationOption(conversation, "How do I judge my opponent?", "dlg_10_1")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "Welcome, adventurer! I sense that you will fight many battles and that you will one day be known as a great hero of Qeynos. But remember, we all have to start somewhere. The first thing you need to know to be successful in combat is how to size up your adversary.")
end

function dlg_10_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good002.mp3", "", "", 1749673923, 3874199641, Spawn)
    AddConversationOption(conversation, "What does the creature's name tell me?", "dlg_10_2")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "You must learn to use both your eyes and your instincts as you consider friends and foes in Norrath. There are two excellent tools you should use to judge their capabilities: what you can tell from their name and what you can learn by targeting them.")
end

function dlg_10_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good003.mp3", "", "", 1857737581, 147614376, Spawn)
    AddConversationOption(conversation, "How do I target an opponent?", "dlg_10_3")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "If something has a red border around its name, that target is aggressive toward you and will attack if you get too close to it. You should be especially careful of creatures that roam around, because if they notice you they won't hesitate to strike.")
end

function dlg_10_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good004.mp3", "", "", 3683773140, 1432557589, Spawn)
    AddConversationOption(conversation, "Why are separate creatures sometimes linked?", "dlg_10_4")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "All you need to do is move your mouse pointer over what you want to target and click. You will see the name of your opponent in the Target window in the upper left corner of the screen, and a large arrow will appear above its head. If arrows also appear above the heads of nearby creatures, it means all of them are linked together and will attack as one.")
end

function dlg_10_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good005.mp3", "", "", 75959961, 1250212958, Spawn)
    AddConversationOption(conversation, "What does the Target window tell me?", "dlg_10_5")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "Sometimes multiple creatures will work together to form a single encounter. These opponents will act as a team, and usually won't stop fighting until all of them are defeated.")
end

function dlg_10_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good006.mp3", "", "", 783568461, 1746620407, Spawn)
    AddConversationOption(conversation, "What does the level indicate?", "dlg_10_6")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "The Target window tells you several important facts, which collectively form what is referred to as the 'con' (overall challenge) of the opponent. It shows you the numerical level of the creature you have targeted, a color to indicate its relative level range, up or down arrows to indicate toughness, and indicators that tell you if the encounter is normal, heroic, or epic.")
end

function dlg_10_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good007.mp3", "", "", 2126605511, 1738009054, Spawn)
    AddConversationOption(conversation, "How does my opponent's level affect my rewards for victory?", "dlg_10_7")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "As you adventure through Norrath, you will gain experience and increase your level. The opponents you will face in combat have levels as well. To be victorious, you will usually want to face foes that are close to your level.")
end

function dlg_10_7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good009.mp3", "", "", 253347516, 133392970, Spawn)
    AddConversationOption(conversation, "What are the colors?", "dlg_10_8")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "The color of the opponent's name indicates how challenging the encounter is. It is very useful as a quick indicator of whether or not you should try fighting a target. The more danger its color indicates, the greater the threat it represents.")
end

function dlg_10_8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good010.mp3", "", "", 1862367558, 3739171183, Spawn)
    AddConversationOption(conversation, "Will grey targets ever attack me?", "dlg_10_9")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "Grey names mean the fight is below your abilities and will give no experience or reward. Green names mean the opponent is very easy. Blue names mean an easy fight. White names indicate the opponent is even with your abilities. Yellow names mean the fight will be challenging. Orange names indicate a difficult encounter. Red names mean the battle could be deadly.")
end

function dlg_10_9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good011.mp3", "", "", 1994206530, 2520624309, Spawn)
    AddConversationOption(conversation, "What do down arrows tell me?", "dlg_10_10")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "Targets with grey names will not attack you, even if they would be aggressive to someone closer to their level. In other words, you won't be attacked by anything that won't give you some reward for defeating it.")
end

function dlg_10_10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good012.mp3", "", "", 1328804443, 2071176575, Spawn)
    AddConversationOption(conversation, "What do up arrows mean?", "dlg_10_11")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "No arrow by the target's name indicates an average opponent for a lone adventurer. A single down arrow means it is a below average opponent. Two down arrows tell you it's a weak opponent, and three down arrows means it is very weak. Be careful though, because if multiple weak opponents are working together they can still be challenging.")
end

function dlg_10_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good013.mp3", "", "", 692862081, 3880129920, Spawn)
    AddConversationOption(conversation, "So how do I know whether I can face a challenge alone?", "dlg_10_12")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "Up arrows indicate increased difficulty. A single up arrow means an above average opponent. Two up arrows show a strong opponent, while three up arrows means a very tough fight. If you look at the sparring partners next to us, you will see that they have different arrow indicators. Feel free to practice fighting them to feel what effect the arrows have.")
end

function dlg_10_12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good014.mp3", "", "", 2013675936, 3060214959, Spawn)
    AddConversationOption(conversation, "What is the difference between normal, heroic, and epic?", "dlg_10_13")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "As a general rule of thumb, if you see an enemy with one up arrow, it's a good idea to team up with another player to take it on. If you see an enemy with two up arrows, add two members to your group. If you see an opponent with three up arrows, add three members to your group. A lone adventurer will likely want to face targets with no arrows or down arrows.")
end

function dlg_10_13(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good015.mp3", "", "", 19627555, 2002715179, Spawn)
    AddConversationOption(conversation, "So how do all these elements work together to show an opponent's difficulty?", "dlg_10_14")
    AddConversationOption(conversation, "I will learn this lesson later.")
    StartConversation(conversation, NPC, Spawn, "A normal opponent has no indicator and is intended to be fought by a solo adventurer or small group. A heroic encounter is intended for a larger group of up to six adventurers. An epic opponent should only be attempted by a raid force of multiple groups working together.")
end

function dlg_10_14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good016.mp3", "", "", 761596996, 3232449140, Spawn)
    AddConversationOption(conversation, "Thank you, instructor.")
    StartConversation(conversation, NPC, Spawn, "All the elements I've explained will affect the outcome of a battle and whether or not you will need allies to win. Pay close attention to the lessons I have taught you, and apply them to the challenges you face throughout your journeys in Norrath. Learn well and you will indeed become the great champion I know you can be!")
end