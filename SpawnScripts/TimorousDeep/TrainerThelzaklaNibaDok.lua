--[[
	Script Name	: SpawnScripts/TimorousDeep/TrainerThelzaklaNibaDok.lua
	Script Purpose	: Trainer Thelzakla Niba'Dok <Combat Trainer>
	Script Author	: John Adams
	Script Date	: 2009.02.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
	end

	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_19_1")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Hello there. I'm here to teach folks the finer points of combat. I don't like to get into a fight, but if I do, I prefer to win.  Know what I mean?")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_19_2")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many different elements that go into successful combat. I can teach you a few of the basics, such as how to begin a fight, the difference between melee and ranged combat, and earning rewards for victory.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I begin the battle?", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "Starting combat is easy. Just use your mouse pointer to left-click on an opponent. Its name will appear in the Target window in the upper left of your screen. You can also use the Tab key to cycle through nearby targets or the F8 key to select your closest enemy.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So I can fight anyone or anything I want?", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "If you're close enough to your foe and want to start hitting it with your weapon, either click your Melee Attack button on your hotbar or press the ~ key. Or you can begin by using one of your spells or combat arts to get the enemy's attention. Remember, you must be close enough to actually hit them.")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_19_5")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can fight most non-player characters and creatures that you find outside your city, whether outdoors or in dungeons. Many non-player characters in the cities are there to help you or give quests, so you can't attack some of them. If you try, you'll get a message telling you that they aren't valid targets.")
end

function dlg_19_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I launch a ranged attack?")
	StartConversation(conversation, NPC, Spawn, "Ranged combat means that you put some distance between yourself and the enemy. This can be done with weapons such as bows or throwing daggers, or with spells and arts that can be cast from a distance.")
end

function dlg_19_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What classes specialize in ranged combat?", "dlg_19_7")
	StartConversation(conversation, NPC, Spawn, "If you have a ranged weapon and ammunition, you can initiate ranged combat by using the Ranged Attack button on the Abilities tab of your Knowledge Book. You can drag this key to your hotbar if you like. Remember, you must have a ranged weapon in the Ranged slot of your inventory window and the correct type of ammunition in the Ammo slot.")
end

function dlg_19_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I tell if I can use spells or arts from a distance?", "dlg_19_8")
	StartConversation(conversation, NPC, Spawn, "While most classes have the ability to attack from a distance, scout classes such as Brigands, Troubadors, Dirges, and Assassins specialize in ranged physical attacks. Mages, priests, and Shadowknights have spells that do damage to their foes from a distance.")
end

function dlg_19_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_19_9")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can right-click on a spell or art's icon and select 'Examine' to see what its range of effect is. In addition, if you target something and the icon for one of your spells or arts turns a dark red, that means the opponent is out of range of that ability.")
end

function dlg_19_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What classes specialize in melee combat?")
	StartConversation(conversation, NPC, Spawn, "Melee combat means a toe-to-toe, physical confrontation. It is a combination of auto-attack damage that happens automatically when you press the Melee Attack button on your hotbar or the ~ key and spells or combat arts that you use in close proximity to your foe.")
end

function dlg_19_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_19_11")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Sturdy fighters such as Guardians, Berserkers, Bruisers, and Shadowknights stand at the front lines of battle facing the enemy. Crafty scouts such as Brigands, Assassins, Troubadors, and Dirges generally stay close to their foes as well, but prefer to launch attacks from the back or side where they are less likely to be counterattacked.")
end

function dlg_19_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean by 'a worthy opponent'?")
	StartConversation(conversation, NPC, Spawn, "Victory in battle can be very rewarding. Successful combat against a worthy opponent awards you experience (XP) to help you advance your level, as well as the chance at coin, usable items, and other valuables.")
end

function dlg_19_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are certain types of targets more rewarding than others?", "dlg_19_13")
	StartConversation(conversation, NPC, Spawn, "You don't earn rewards for defeating foes that are too far below your level. If your target has a grey name, it means it is very weak and won't provide any benefit for beating it.")
end

function dlg_19_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_19_14")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "The tougher a foe, the better its chances to provide a valuable reward. Though defeating enemies alone provides nice rewards, defeating heroic enemies that require a group is even more rewarding. The very best items come from banding together multiple groups to defeat epic opponents.")
end

function dlg_19_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_19_15")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many advanced combat techniques that you will learn over time. There's no substitute for experience, .. GetName(Spawn) .. . I'd be happy to discuss a few of these advanced aspects, such as selecting the right opponent, knowing your surroundings, and using your abilities.")
end

function dlg_19_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I tell if an opponent is too weak or too strong for me?", "dlg_19_16")
	StartConversation(conversation, NPC, Spawn, "Picking the right fight is crucial to victory. A weak opponent won't provide worthwhile rewards, while an overly powerful foe will result in your defeat. You need to keep your resources in mind as well as choosing the right target.")
end

function dlg_19_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What resources should I be keeping an eye on?", "dlg_19_17")
	StartConversation(conversation, NPC, Spawn, "Targeting an opponent will show you detailed information on its overall potency. Generally speaking, you'll find the best results from fighting opponents with blue, white, or yellow names.")
end

function dlg_19_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "dlg_19_18")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Starting a fight when you are low on health or power is a very bad idea. Your choice of targets also depends on whether you're alone or grouped with other players. Forming a group allows you to take on tougher and more rewarding challenges than you could face alone.")
end

function dlg_19_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Successful fighting isn't about turning on your auto-attack and walking away from battle. Your odds of victory are much better if you are well-prepared and are active during combat. You should use every spell or combat art that has a positive effect on your chances to win.")
end

function dlg_19_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What about during battle?", "dlg_19_20")
	StartConversation(conversation, NPC, Spawn, "Before you begin fighting, make sure you and your allies have activated all beneficial spells, also known as 'buffs,' so that you're operating at peak efficiency. Buffs can add health or power, increase your rate of regeneration, enhance your physical attributes, make you attack faster or do more damage, and more.")
end

function dlg_19_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What else should I know about spells and arts?", "dlg_19_21")
	StartConversation(conversation, NPC, Spawn, "Whether you're a front-lines melee type or someone attacking from a distance with weapons or spells, you should be using abilities that damage your foes effectively and efficiently. Right click on your spells and arts and select 'Examine' to see details on their effects.")
end

function dlg_19_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_19_22")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Using your highest-level versions of spells and arts will be more effective than using older versions. In addition, you should be upgrading your abilities to higher ranks to make them more effective. For more details on spells and combat arts, talk to Trainer Yasna V'Vath.")
end

function dlg_19_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.", "dlg_19_23")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many different elements that go into successful combat. I can teach you a few of the basics, such as how to begin a fight, the difference between melee and ranged combat, and earning rewards for victory.")
end

function dlg_19_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I begin the battle?", "dlg_19_24")
	StartConversation(conversation, NPC, Spawn, "Starting combat is easy. Just use your mouse pointer to left-click on an opponent. Its name will appear in the Target window in the upper left of your screen. You can also use the Tab key to cycle through nearby targets or the F8 key to select your closest enemy.")
end

function dlg_19_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So I can fight anyone or anything I want?", "dlg_19_25")
	StartConversation(conversation, NPC, Spawn, "If you're close enough to your foe and want to start hitting it with your weapon, either click your Melee Attack button on your hotbar or press the ~ key. Or you can begin by using one of your spells or combat arts to get the enemy's attention. Remember, you must be close enough to actually hit them.")
end

function dlg_19_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_19_26")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can fight most non-player characters and creatures that you find outside your city, whether outdoors or in dungeons. Many non-player characters in the cities are there to help you or give quests, so you can't attack some of them. If you try, you'll get a message telling you that they aren't valid targets.")
end

