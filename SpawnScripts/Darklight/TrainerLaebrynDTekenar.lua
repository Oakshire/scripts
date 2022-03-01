--[[
	Script Name	: SpawnScripts/Darklight/TrainerLaebrynDTekenar.lua
	Script Purpose	: Trainer Laebryn D'Tekenar <Know Your Enemy>
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I judge my opponent?", "dlg_2_1")
	AddConversationOption(conversation, "I'll return later.")
	StartConversation(conversation, NPC, Spawn, "Greetings. I sense that you will fight many battles and that you will one day be known as a great hero. But remember, we all have to start somewhere. The first thing you need to know to be successful in combat is how to size up your adversary.")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How do I judge my opponent?", "dlg_3_1")
		AddConversationOption(conversation, "I'll return later.")
		StartConversation(conversation, NPC, Spawn, "Greetings. I sense that you will fight many battles and that you will one day be known as a great hero. But remember, we all have to start somewhere. The first thing you need to know to be successful in combat is how to size up your adversary.")
	end

end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the creature's name tell me?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "You must learn to use both your eyes and your instincts as you consider friends and foes alike in Norrath. There are two excellent tools you should use to judge their capabilities: what you can tell from their name and what you can learn by targeting them.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I target an opponent?", "dlg_2_3")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "If something has a red border around its name, that target is aggressive toward you and will attack if you get too close to it. You should be especially careful of creatures that roam around, because if they notice you they won't hesitate to strike.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why are separate creatures sometimes linked?", "dlg_2_4")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "All you need to do is move your mouse pointer over what you want to target and click. You will see the name of your opponent in the Target window in the upper left corner of the screen, and a large arrow will appear above its head. If arrows also appear above the heads of nearby creatures, it means all of them are linked together and will attack as one.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the Target window tell me?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Sometimes multiple creatures will work together to form a single encounter. These opponents will act as a team, and usually won't stop fighting until all of them are defeated.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the level indicate?", "dlg_2_6")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "The Target window tells you several important facts, which collectively form what is referred to as the 'con' (overall challenge) of the opponent. It shows you the numerical level of the creature you have targeted, a color to indicate its relative level range, up or down arrows to indicate toughness, and indicators that tell you if the encounter is normal, heroic, or epic.")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How does my opponent's level affect my rewards for victory?", "dlg_2_7")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "As you adventure through Norrath, you will gain experience and increase your level. The opponents you will face in combat have levels as well. To be victorious, you will usually want to face foes that are close to your level.")
end

function dlg_2_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the color of my opponent's name tell me?", "dlg_2_8")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "You gain more experience by defeating higher-level opponents, but they will also be tougher to beat. Conversely, if you defeat foes much lower than your level, they will not be nearly as rewarding.")
end

function dlg_2_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are the colors?", "dlg_2_9")
	StartConversation(conversation, NPC, Spawn, "The color of your opponent's name indicates how challenging the encounter is. It is very useful as a quick indicator of whether or not you should be fighting a target. The more danger its color indicates, the greater the threat it represents.")
end

function dlg_2_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Will grey targets ever attack me?", "dlg_2_10")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "Grey names mean the fight is below your abilities and will give no experience or reward. Green names mean the opponent is very easy. Blue names mean an easy fight. White names indicate the opponent is even with your abilities. Yellow names mean the fight will be challenging. Orange names indicate a difficult encounter. Red names mean the battle could be deadly.")
end

function dlg_2_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do down arrows tell me?", "dlg_2_11")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "Targets with grey names will not attack you, even if they would be aggressive to someone closer to their level. In other words, you won't be attacked by anything that won't give you some reward for defeating it.")
end

function dlg_2_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do up arrows mean?", "dlg_2_12")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "No arrow by the target's name indicates an average opponent for a lone adventurer. A single down arrow means it is a below average opponent. Two down arrows tell you it's a weak opponent, and three down arrows means it is very weak. Be careful though, because if multiple weak opponents are working together they can still represent quite a challenge.")
end

function dlg_2_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So how do I know whether I can face a challenge alone?", "dlg_2_13")
	AddConversationOption(conversation, "I will finish this lesson later.")
	StartConversation(conversation, NPC, Spawn, "Up arrows indicate increased difficulty. A single up arrow means an above average opponent. Two up arrows show a strong opponent, while three up arrows means a very tough fight. If you look at the sparring partners next to us, you will see that they have different arrow indicators. Feel free to practice fighting them to feel what effect the arrows have.")
end

function dlg_2_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What is the difference between normal, heroic, and epic?", "dlg_2_14")
	AddConversationOption(conversation, "I will finish this lesson later.")
	StartConversation(conversation, NPC, Spawn, "As a general rule of thumb, if you see an enemy with one up arrow, it's a good idea to team up with another player to take it on. If you see an enemy with two up arrows, add two members to your group. If you see an opponent with three up arrows, add three members to your group. A lone adventurer will likely want to face targets with no arrows or down arrows.")
end

function dlg_2_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So how do all these elements work together to show an opponent's difficulty?", "dlg_2_15")
	AddConversationOption(conversation, "I will finish this lesson later.")
	StartConversation(conversation, NPC, Spawn, "A normal opponent has no indicator and is intended to be fought by a solo adventurer or small group. A heroic encounter is intended for a larger group of up to six adventurers. An epic opponent should only be attempted by a raid force of multiple groups working together.")
end

function dlg_2_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, instructor.", "dlg_2_16")
	StartConversation(conversation, NPC, Spawn, "All the elements I've explained will affect the outcome of a battle and whether or not you will need allies to win. Pay close attention to the lessons I have taught you, and apply them to challenges you face throughout your journeys in Norrath.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the creature's name tell me?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "You must learn to use both your eyes and your instincts as you consider friends and foes alike in Norrath. There are two excellent tools you should use to judge their capabilities: what you can tell from their name and what you can learn by targeting them.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I target an opponent?", "dlg_3_3")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "If something has a red border around its name, that target is aggressive toward you and will attack if you get too close to it. You should be especially careful of creatures that roam around, because if they notice you they won't hesitate to strike.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why are separate creatures sometimes linked?", "dlg_3_4")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "All you need to do is move your mouse pointer over what you want to target and click. You will see the name of your opponent in the Target window in the upper left corner of the screen, and a large arrow will appear above its head. If arrows also appear above the heads of nearby creatures, it means all of them are linked together and will attack as one.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the Target window tell me?", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Sometimes multiple creatures will work together to form a single encounter. These opponents will act as a team, and usually won't stop fighting until all of them are defeated.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the level indicate?", "dlg_3_6")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "The Target window tells you several important facts, which collectively form what is referred to as the 'con' (overall challenge) of the opponent. It shows you the numerical level of the creature you have targeted, a color to indicate its relative level range, up or down arrows to indicate toughness, and indicators that tell you if the encounter is normal, heroic, or epic.")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How does my opponent's level affect my rewards for victory?", "dlg_3_7")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "As you adventure through Norrath, you will gain experience and increase your level. The opponents you will face in combat have levels as well. To be victorious, you will usually want to face foes that are close to your level.")
end

function dlg_3_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the color of my opponent's name tell me?", "dlg_3_8")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "You gain more experience by defeating higher-level opponents, but they will also be tougher to beat. Conversely, if you defeat foes much lower than your level, they will not be nearly as rewarding.")
end

function dlg_3_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are the colors?", "dlg_3_9")
	StartConversation(conversation, NPC, Spawn, "The color of your opponent's name indicates how challenging the encounter is. It is very useful as a quick indicator of whether or not you should be fighting a target. The more danger its color indicates, the greater the threat it represents.")
end

function dlg_3_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Will grey targets ever attack me?", "dlg_3_10")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "Grey names mean the fight is below your abilities and will give no experience or reward. Green names mean the opponent is very easy. Blue names mean an easy fight. White names indicate the opponent is even with your abilities. Yellow names mean the fight will be challenging. Orange names indicate a difficult encounter. Red names mean the battle could be deadly.")
end

function dlg_3_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do down arrows tell me?", "dlg_3_11")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "Targets with grey names will not attack you, even if they would be aggressive to someone closer to their level. In other words, you won't be attacked by anything that won't give you some reward for defeating it.")
end

function dlg_3_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do up arrows mean?", "dlg_3_12")
	AddConversationOption(conversation, "I will be back later.")
	StartConversation(conversation, NPC, Spawn, "No arrow by the target's name indicates an average opponent for a lone adventurer. A single down arrow means it is a below average opponent. Two down arrows tell you it's a weak opponent, and three down arrows means it is very weak. Be careful though, because if multiple weak opponents are working together they can still represent quite a challenge.")
end

function dlg_3_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So how do I know whether I can face a challenge alone?", "dlg_3_13")
	AddConversationOption(conversation, "I will finish this lesson later.")
	StartConversation(conversation, NPC, Spawn, "Up arrows indicate increased difficulty. A single up arrow means an above average opponent. Two up arrows show a strong opponent, while three up arrows means a very tough fight. If you look at the sparring partners next to us, you will see that they have different arrow indicators. Feel free to practice fighting them to feel what effect the arrows have.")
end

function dlg_3_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What is the difference between normal, heroic, and epic?", "dlg_3_14")
	AddConversationOption(conversation, "I will finish this lesson later.")
	StartConversation(conversation, NPC, Spawn, "As a general rule of thumb, if you see an enemy with one up arrow, it's a good idea to team up with another player to take it on. If you see an enemy with two up arrows, add two members to your group. If you see an opponent with three up arrows, add three members to your group. A lone adventurer will likely want to face targets with no arrows or down arrows.")
end

function dlg_3_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So how do all these elements work together to show an opponent's difficulty?", "dlg_3_15")
	AddConversationOption(conversation, "I will finish this lesson later.")
	StartConversation(conversation, NPC, Spawn, "A normal opponent has no indicator and is intended to be fought by a solo adventurer or small group. A heroic encounter is intended for a larger group of up to six adventurers. An epic opponent should only be attempted by a raid force of multiple groups working together.")
end

function dlg_3_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, instructor.", "dlg_3_16")
	StartConversation(conversation, NPC, Spawn, "All the elements I've explained will affect the outcome of a battle and whether or not you will need allies to win. Pay close attention to the lessons I have taught you, and apply them to challenges you face throughout your journeys in Norrath.")
end

