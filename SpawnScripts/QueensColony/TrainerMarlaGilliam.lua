--[[
    Script Name    : SpawnScripts/QueensColony/TrainerMarlaGilliam.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Marla Gilliam dialog
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog6(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No arrow by the target's name indicates an average opponent for a lone adventurer. A single down arrow means it is a below average opponent. Two down arrows tell you it's a weak opponent, and three down arrows means it is very weak. Be careful though, because if multiple weak opponents are working together they can still be challenging.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good012.mp3", 1328804443, 2071176575)
	Dialog.AddOption("What do up arrows mean?", "Dialog15")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As you adventure through Norrath, you will gain experience and increase your level. The opponents you will face in combat have levels as well. To be victorious, you will usually want to face foes that are close to your level.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good007.mp3", 2126605511, 1738009054)
	Dialog.AddOption("How does my opponent's level affect my rewards for victory?", "Dialog13")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If something has a red border around its name, that target is aggressive toward you and will attack if you get too close to it. You should be especially careful of creatures that roam around, because if they notice you they won't hesitate to strike.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good003.mp3", 1857737581, 147614376)
	Dialog.AddOption("How do I target an opponent?", "Dialog16")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Targets with grey names will not attack you, even if they would be aggressive to someone closer to their level. In other words, you won't be attacked by anything that won't give you some reward for defeating it.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good011.mp3", 1994206530, 2520624309)
	Dialog.AddOption("What do down arrows tell me?", "Dialog1")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Target window tells you several important facts, which collectively form what is referred to as the \"con\" (overall challenge) of the opponent. It shows you the numerical level of the creature you have targeted, a color to indicate its relative level range, up or down arrows to indicate toughness, and indicators that tell you if the encounter is normal, heroic, or epic.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good006.mp3", 783568461, 1746620407)
	Dialog.AddOption("What does the level indicate?", "Dialog2")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome, adventurer! I sense that you will fight many battles and that you will one day be known as a great hero of Qeynos. But remember, we all have to start somewhere. The first thing you need to know to be successful in combat is how to size up your adversary.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good001.mp3", 4073343319, 3363307823)
	Dialog.AddOption("How do I judge my opponent?", "Dialog8")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The color of the opponent's name indicates how challenging the encounter is. It is very useful as a quick indicator of whether or not you should try fighting a target. The more danger its color indicates, the greater the threat it represents.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good009.mp3", 253347516, 133392970)
	Dialog.AddOption("What are the colors?", "Dialog9")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must learn to use both your eyes and your instincts as you consider friends and foes in Norrath. There are two excellent tools you should use to judge their capabilities: what you can tell from their name and what you can learn by targeting them.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good002.mp3", 1749673923, 3874199641)
	Dialog.AddOption("What does the creature's name tell me?", "Dialog3")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Grey names mean the fight is below your abilities and will give no experience or reward. Green names mean the opponent is very easy. Blue names mean an easy fight. White names indicate the opponent is even with your abilities. Yellow names mean the fight will be challenging. Orange names indicate a difficult encounter. Red names mean the battle could be deadly.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good010.mp3", 1862367558, 3739171183)
	Dialog.AddOption("Will grey targets ever attack me?", "Dialog4")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As a general rule of thumb, if you see an enemy with one up arrow, it's a good idea to team up with another player to take it on. If you see an enemy with two up arrows, add two members to your group. If you see an opponent with three up arrows, add three members to your group. A lone adventurer will likely want to face targets with no arrows or down arrows.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good014.mp3", 2013675936, 3060214959)
	Dialog.AddOption("What is the difference between normal, heroic, and epic?", "Dialog12")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sometimes multiple creatures will work together to form a single encounter. These opponents will act as a team, and usually won't stop fighting until all of them are defeated.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good005.mp3", 75959961, 1250212958)
	Dialog.AddOption("What does the Target window tell me?", "Dialog5")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A normal opponent has no indicator and is intended to be fought by a solo adventurer or small group. A heroic encounter is intended for a larger group of up to six adventurers. An epic opponent should only be attempted by a raid force of multiple groups working together.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good015.mp3", 19627555, 2002715179)
	Dialog.AddOption("So how do all these elements work together to show an opponent's difficulty?", "Dialog14")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You gain more experience for defeating higher-level opponents, but they will be tougher to beat. Conversely, if you defeat foes much weaker than you, it will not be as rewarding.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good008.mp3", 1264665729, 3641307819)
	Dialog.AddOption("What does the color of my opponent's name tell me?", "Dialog7")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All the elements I've explained will affect the outcome of a battle and whether or not you will need allies to win. Pay close attention to the lessons I have taught you, and apply them to the challenges you face throughout your journeys in Norrath. Learn well and you will indeed become the great champion I know you can be!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good016.mp3", 761596996, 3232449140)
	Dialog.AddOption("Thank you, instructor.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Up arrows indicate increased difficulty. A single up arrow means an above average opponent. Two up arrows show a strong opponent, while three up arrows means a very tough fight. If you look at the sparring partners next to us, you will see that they have different arrow indicators. Feel free to practice fighting them to feel what effect the arrows have.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good013.mp3", 692862081, 3880129920)
	Dialog.AddOption("So how do I know whether I can face a challenge alone?", "Dialog10")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All you need to do is move your mouse pointer over what you want to target and click. You will see the name of your opponent in the Target window in the upper left corner of the screen, and a large arrow will appear above its head. If arrows also appear above the heads of nearby creatures, it means all of them are linked together and will attack as one.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/trainer_marla_gilliam/tutorial_island02_revamp/trainers/con_system/con_good004.mp3", 3683773140, 1432557589)
	Dialog.AddOption("Why are separate creatures sometimes linked?", "Dialog11")
	Dialog.AddOption("I will learn this lesson later.")
	Dialog.Start()
end
