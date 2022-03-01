--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerArillaLarivaara.lua
	Script Purpose	: Trainer Arilla Larivaara <Weapon Master>
	Script Author	: John Adams
	Script Date	: 2009.02.05
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara007.mp3", "", "", 3148880847, 947148371, Spawn)
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_4_1")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". I'm here to teach folks the finer points of combat. I don't like to get into a fight, but if I do, I prefer to win.  Know what I mean?")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara007.mp3", "", "", 3148880847, 947148371, Spawn)
		AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_5_1")
		AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
		AddConversationOption(conversation, "I'll come back later.")
		StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". I'm here to teach folks the finer points of combat. I don't like to get into a fight, but if I do, I prefer to win.  Know what I mean?")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara008.mp3", "", "", 2898686401, 1752530734, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_4_2")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many different elements that go into successful combat. I can teach you a few of the basics, such as how to begin a fight, the difference between melee and ranged combat, and earning rewards for victory.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara009.mp3", "", "", 1613933242, 1197148922, Spawn)
	AddConversationOption(conversation, "How do I begin the battle?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Starting combat is easy. Just use your mouse pointer to left-click on an opponent. Its name will appear in the Target window in the upper left of your screen. You can also use the Tab key to cycle through nearby targets or the F8 key to select your closest enemy.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara010.mp3", "", "", 1755891240, 3796028834, Spawn)
	AddConversationOption(conversation, "So I can fight anyone or anything I want?", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "If you're close enough to your foe and want to start hitting it with your weapon, either click your Melee Attack button on your hotbar or press the ~ key. Or you can begin by using one of your spells or combat arts to get the enemy's attention. Remember, you must be close enough to actually hit them.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara011.mp3", "", "", 3723859553, 908527971, Spawn)
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_4_5")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can fight most non-player characters and creatures that you find outside your city, whether outdoors or in dungeons. Many non-player characters in the cities are there to help you or give quests, so you can't attack some of them. If you try, you'll get a message telling you that they aren't valid targets.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara012.mp3", "", "", 3752439035, 2733336647, Spawn)
	AddConversationOption(conversation, "What classes specialize in melee combat?", "dlg_4_6")
	StartConversation(conversation, NPC, Spawn, "Melee combat means a toe-to-toe, physical confrontation. It is a combination of auto-attack damage that happens automatically when you press the Melee Attack button on your hotbar or the ~ key and spells or combat arts that you use in close proximity to your foe.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara013.mp3", "", "", 1434116742, 4225387141, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_4_7")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Sturdy fighters such as Guardians, Berserkers, Monks, and Paladins stand at the front lines of battle facing the enemy. Crafty scouts such as Swashbucklers, Rangers, Troubadors, and Dirges generally stay close to their foes as well, but prefer to launch attacks from the back or side where they are less likely to be counterattacked.")
end

function dlg_4_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara014.mp3", "", "", 3046408427, 2592738256, Spawn)
	AddConversationOption(conversation, "How do I launch a ranged attack?")
	StartConversation(conversation, NPC, Spawn, "Ranged combat means that you put some distance between yourself and the enemy. This can be done with weapons such as bows or throwing daggers, or with spells and arts that can be cast from a distance.")
end

function dlg_4_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara015.mp3", "", "", 3151700367, 2431538473, Spawn)
	AddConversationOption(conversation, "What classes specialize in ranged combat?", "dlg_4_9")
	StartConversation(conversation, NPC, Spawn, "If you have a ranged weapon and ammunition, you can initiate ranged combat by using the Ranged Attack button on the Abilities tab of your Knowledge Book. You can drag this key to your hotbar if you like. Remember, you must have a ranged weapon in the Ranged slot of your inventory window and the correct type of ammunition in the Ammo slot.")
end

function dlg_4_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara016.mp3", "", "", 1497976155, 2895560497, Spawn)
	AddConversationOption(conversation, "How do I tell if I can use spells or arts from a distance?", "dlg_4_10")
	StartConversation(conversation, NPC, Spawn, "While most classes have the ability to attack from a distance, scout classes such as Swashbucklers, Troubadors, Dirges, and particularly Rangers specialize in ranged physical attacks. Mages, priests, and Paladins have spells that do damage to their foes from a distance.")
end

function dlg_4_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara017.mp3", "", "", 893336149, 277723094, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_4_11")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can right-click on a spell or art's icon and select 'Examine' to see what its range of effect is. In addition, if you target something and the icon for one of your spells or arts turns a dark red, that means the opponent is out of range of that ability.")
end

function dlg_4_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara012.mp3", "", "", 3752439035, 2733336647, Spawn)
	AddConversationOption(conversation, "What classes specialize in melee combat?")
	StartConversation(conversation, NPC, Spawn, "Melee combat means a toe-to-toe, physical confrontation. It is a combination of auto-attack damage that happens automatically when you press the Melee Attack button on your hotbar or the ~ key and spells or combat arts that you use in close proximity to your foe.")
end

function dlg_4_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara013.mp3", "", "", 1434116742, 4225387141, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_4_13")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Sturdy fighters such as Guardians, Berserkers, Monks, and Paladins stand at the front lines of battle facing the enemy. Crafty scouts such as Swashbucklers, Rangers, Troubadors, and Dirges generally stay close to their foes as well, but prefer to launch attacks from the back or side where they are less likely to be counterattacked.")
end

function dlg_4_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara018.mp3", "", "", 2556228609, 3589317469, Spawn)
	AddConversationOption(conversation, "What do you mean by 'a worthy opponent'?")
	StartConversation(conversation, NPC, Spawn, "Victory in battle can be very rewarding. Successful combat against a worthy opponent awards you experience (XP) to help you advance your level, as well as the chance at coin, usable items, and other valuables.")
end

function dlg_4_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara019.mp3", "", "", 4159604095, 2208350646, Spawn)
	AddConversationOption(conversation, "Are certain types of targets more rewarding than others?", "dlg_4_15")
	StartConversation(conversation, NPC, Spawn, "You don't earn rewards for defeating foes that are too far below your level. If your target has a grey name, it means it is very weak and won't provide any benefit for beating it. Talk to Trainer Tahvolo Viljaan for more information on evaluating your opponents.")
end

function dlg_4_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara020.mp3", "", "", 3722520538, 550116332, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_4_16")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "The tougher a foe, the better its chances to provide a valuable reward. Though defeating enemies alone provides nice rewards, defeating heroic enemies that require a group is even more rewarding. The very best items come from banding together multiple groups to defeat epic opponents.")
end

function dlg_4_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara021.mp3", "", "", 801103527, 2875309924, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_4_17")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many advanced combat techniques that you will learn over time. There's no substitute for experience, .. GetName(Spawn) .. . I'd be happy to discuss a few of these advanced aspects, such as selecting the right opponent, knowing your surroundings, and using your abilities.")
end

function dlg_4_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara022.mp3", "", "", 187572586, 450509917, Spawn)
	AddConversationOption(conversation, "How do I tell if an opponent is too weak or too strong for me?", "dlg_4_18")
	StartConversation(conversation, NPC, Spawn, "Picking the right fight is crucial to victory. A weak opponent won't provide worthwhile rewards, while an overly powerful foe will result in your defeat. You need to keep your resources in mind as well as choosing the right target.")
end

function dlg_4_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara023.mp3", "", "", 4040652289, 1699138117, Spawn)
	AddConversationOption(conversation, "What resources should I be keeping an eye on?", "dlg_4_19")
	StartConversation(conversation, NPC, Spawn, "Targeting an opponent will show you detailed information on its overall potency. Generally speaking, you'll find the best results from fighting opponents with blue, white, or yellow names. Talk to Trainer Tahvolo Viljaan for more information on evaluating your opponents.")
end

function dlg_4_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara024.mp3", "", "", 3598297774, 910017607, Spawn)
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "dlg_4_20")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Starting a fight when you are low on health or power is a very bad idea. Your choice of targets also depends on whether you're alone or grouped with other players. Forming a group allows you to take on tougher and more rewarding challenges than you could face alone.")
end

function dlg_4_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara025.mp3", "", "", 302868023, 1058230652, Spawn)
	AddConversationOption(conversation, "Anything else I should watch out for?", "dlg_4_21")
	StartConversation(conversation, NPC, Spawn, "Keeping your surroundings in mind is crucial to victory. Fighting in areas with lots of aggressive creatures is a bad idea, because they won't hesitate to gang up on you.")
end

function dlg_4_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara026.mp3", "", "", 2395836258, 4167880022, Spawn)
	AddConversationOption(conversation, "Any other tips?", "dlg_4_22")
	StartConversation(conversation, NPC, Spawn, "Staying too long on the exact spot where you just defeated a foe can be dangerous. Another enemy is likely to show up there soon after, which can be an unpleasant surprise if you're already in another battle.")
end

function dlg_4_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara027.mp3", "", "", 3335927389, 418360840, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_4_23")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You should be aware of what's going on around you. Using your mouse wheel to scroll out into third person and holding down the left mouse button allows you to move the camera around your character. It's a good idea to do this when fighting in dangerous areas to make sure nothing sneaks up on you.")
end

function dlg_4_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara028.mp3", "", "", 3915273076, 3111917162, Spawn)
	AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Successful fighting isn't about turning on your auto-attack and walking away from battle. Your odds of victory are much better if you are well-prepared and are active during combat. You should use every spell or combat art that has a positive effect on your chances to win.")
end

function dlg_4_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara029.mp3", "", "", 2179864552, 3125288554, Spawn)
	AddConversationOption(conversation, "What about during battle?", "dlg_4_25")
	StartConversation(conversation, NPC, Spawn, "Before you begin fighting, make sure you and your allies have activated all beneficial spells, also known as 'buffs,' so that you're operating at peak efficiency. Buffs can add health or power, increase your rate of regeneration, enhance your physical attributes, make you attack faster or do more damage, and more.")
end

function dlg_4_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara030.mp3", "", "", 2306274826, 3024519845, Spawn)
	AddConversationOption(conversation, "What else should I know about spells and arts?", "dlg_4_26")
	StartConversation(conversation, NPC, Spawn, "Whether you're a front-lines melee type or someone attacking from a distance with weapons or spells, you should be using abilities that damage your foes effectively and efficiently. Right click on your spells and arts and select 'Examine' to see details on their effects.")
end

function dlg_4_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara031.mp3", "", "", 2411688474, 2950057017, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_4_27")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Using your highest-level versions of spells and arts will be more effective than using older versions. In addition, you should be upgrading your abilities to higher ranks to make them more effective. For more details on spells and combat arts, talk to Trainer Valtteri Yliveri.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara008.mp3", "", "", 2898686401, 1752530734, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_5_2")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many different elements that go into successful combat. I can teach you a few of the basics, such as how to begin a fight, the difference between melee and ranged combat, and earning rewards for victory.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara009.mp3", "", "", 1613933242, 1197148922, Spawn)
	AddConversationOption(conversation, "How do I begin the battle?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Starting combat is easy. Just use your mouse pointer to left-click on an opponent. Its name will appear in the Target window in the upper left of your screen. You can also use the Tab key to cycle through nearby targets or the F8 key to select your closest enemy.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara010.mp3", "", "", 1755891240, 3796028834, Spawn)
	AddConversationOption(conversation, "So I can fight anyone or anything I want?", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "If you're close enough to your foe and want to start hitting it with your weapon, either click your Melee Attack button on your hotbar or press the ~ key. Or you can begin by using one of your spells or combat arts to get the enemy's attention. Remember, you must be close enough to actually hit them.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara011.mp3", "", "", 3723859553, 908527971, Spawn)
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_5_5")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can fight most non-player characters and creatures that you find outside your city, whether outdoors or in dungeons. Many non-player characters in the cities are there to help you or give quests, so you can't attack some of them. If you try, you'll get a message telling you that they aren't valid targets.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara012.mp3", "", "", 3752439035, 2733336647, Spawn)
	AddConversationOption(conversation, "What classes specialize in melee combat?", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "Melee combat means a toe-to-toe, physical confrontation. It is a combination of auto-attack damage that happens automatically when you press the Melee Attack button on your hotbar or the ~ key and spells or combat arts that you use in close proximity to your foe.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara013.mp3", "", "", 1434116742, 4225387141, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_5_7")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Sturdy fighters such as Guardians, Berserkers, Monks, and Paladins stand at the front lines of battle facing the enemy. Crafty scouts such as Swashbucklers, Rangers, Troubadors, and Dirges generally stay close to their foes as well, but prefer to launch attacks from the back or side where they are less likely to be counterattacked.")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara014.mp3", "", "", 3046408427, 2592738256, Spawn)
	AddConversationOption(conversation, "How do I launch a ranged attack?")
	StartConversation(conversation, NPC, Spawn, "Ranged combat means that you put some distance between yourself and the enemy. This can be done with weapons such as bows or throwing daggers, or with spells and arts that can be cast from a distance.")
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara015.mp3", "", "", 3151700367, 2431538473, Spawn)
	AddConversationOption(conversation, "What classes specialize in ranged combat?", "dlg_5_9")
	StartConversation(conversation, NPC, Spawn, "If you have a ranged weapon and ammunition, you can initiate ranged combat by using the Ranged Attack button on the Abilities tab of your Knowledge Book. You can drag this key to your hotbar if you like. Remember, you must have a ranged weapon in the Ranged slot of your inventory window and the correct type of ammunition in the Ammo slot.")
end

function dlg_5_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara016.mp3", "", "", 1497976155, 2895560497, Spawn)
	AddConversationOption(conversation, "How do I tell if I can use spells or arts from a distance?", "dlg_5_10")
	StartConversation(conversation, NPC, Spawn, "While most classes have the ability to attack from a distance, scout classes such as Swashbucklers, Troubadors, Dirges, and particularly Rangers specialize in ranged physical attacks. Mages, priests, and Paladins have spells that do damage to their foes from a distance.")
end

function dlg_5_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara017.mp3", "", "", 893336149, 277723094, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_5_11")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can right-click on a spell or art's icon and select 'Examine' to see what its range of effect is. In addition, if you target something and the icon for one of your spells or arts turns a dark red, that means the opponent is out of range of that ability.")
end

function dlg_5_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara018.mp3", "", "", 2556228609, 3589317469, Spawn)
	AddConversationOption(conversation, "What do you mean by 'a worthy opponent'?")
	StartConversation(conversation, NPC, Spawn, "Victory in battle can be very rewarding. Successful combat against a worthy opponent awards you experience (XP) to help you advance your level, as well as the chance at coin, usable items, and other valuables.")
end

function dlg_5_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara019.mp3", "", "", 4159604095, 2208350646, Spawn)
	AddConversationOption(conversation, "Are certain types of targets more rewarding than others?", "dlg_5_13")
	StartConversation(conversation, NPC, Spawn, "You don't earn rewards for defeating foes that are too far below your level. If your target has a grey name, it means it is very weak and won't provide any benefit for beating it. Talk to Trainer Tahvolo Viljaan for more information on evaluating your opponents.")
end

function dlg_5_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara020.mp3", "", "", 3722520538, 550116332, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_5_14")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "The tougher a foe, the better its chances to provide a valuable reward. Though defeating enemies alone provides nice rewards, defeating heroic enemies that require a group is even more rewarding. The very best items come from banding together multiple groups to defeat epic opponents.")
end

function dlg_5_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara021.mp3", "", "", 801103527, 2875309924, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_5_15")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many advanced combat techniques that you will learn over time. There's no substitute for experience, .. GetName(Spawn) .. . I'd be happy to discuss a few of these advanced aspects, such as selecting the right opponent, knowing your surroundings, and using your abilities.")
end

function dlg_5_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara022.mp3", "", "", 187572586, 450509917, Spawn)
	AddConversationOption(conversation, "How do I tell if an opponent is too weak or too strong for me?", "dlg_5_16")
	StartConversation(conversation, NPC, Spawn, "Picking the right fight is crucial to victory. A weak opponent won't provide worthwhile rewards, while an overly powerful foe will result in your defeat. You need to keep your resources in mind as well as choosing the right target.")
end

function dlg_5_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara023.mp3", "", "", 4040652289, 1699138117, Spawn)
	AddConversationOption(conversation, "What resources should I be keeping an eye on?", "dlg_5_17")
	StartConversation(conversation, NPC, Spawn, "Targeting an opponent will show you detailed information on its overall potency. Generally speaking, you'll find the best results from fighting opponents with blue, white, or yellow names. Talk to Trainer Tahvolo Viljaan for more information on evaluating your opponents.")
end

function dlg_5_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara024.mp3", "", "", 3598297774, 910017607, Spawn)
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "dlg_5_18")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Starting a fight when you are low on health or power is a very bad idea. Your choice of targets also depends on whether you're alone or grouped with other players. Forming a group allows you to take on tougher and more rewarding challenges than you could face alone.")
end

function dlg_5_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara025.mp3", "", "", 302868023, 1058230652, Spawn)
	AddConversationOption(conversation, "Anything else I should watch out for?", "dlg_5_19")
	StartConversation(conversation, NPC, Spawn, "Keeping your surroundings in mind is crucial to victory. Fighting in areas with lots of aggressive creatures is a bad idea, because they won't hesitate to gang up on you.")
end

function dlg_5_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara026.mp3", "", "", 2395836258, 4167880022, Spawn)
	AddConversationOption(conversation, "Any other tips?", "dlg_5_20")
	StartConversation(conversation, NPC, Spawn, "Staying too long on the exact spot where you just defeated a foe can be dangerous. Another enemy is likely to show up there soon after, which can be an unpleasant surprise if you're already in another battle.")
end

function dlg_5_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara027.mp3", "", "", 3335927389, 418360840, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_5_21")
	AddConversationOption(conversation, "Tell me about using my abilities.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You should be aware of what's going on around you. Using your mouse wheel to scroll out into third person and holding down the left mouse button allows you to move the camera around your character. It's a good idea to do this when fighting in dangerous areas to make sure nothing sneaks up on you.")
end

function dlg_5_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara028.mp3", "", "", 3915273076, 3111917162, Spawn)
	AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Successful fighting isn't about turning on your auto-attack and walking away from battle. Your odds of victory are much better if you are well-prepared and are active during combat. You should use every spell or combat art that has a positive effect on your chances to win.")
end

function dlg_5_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara029.mp3", "", "", 2179864552, 3125288554, Spawn)
	AddConversationOption(conversation, "What about during battle?", "dlg_5_23")
	StartConversation(conversation, NPC, Spawn, "Before you begin fighting, make sure you and your allies have activated all beneficial spells, also known as 'buffs,' so that you're operating at peak efficiency. Buffs can add health or power, increase your rate of regeneration, enhance your physical attributes, make you attack faster or do more damage, and more.")
end

function dlg_5_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara030.mp3", "", "", 2306274826, 3024519845, Spawn)
	AddConversationOption(conversation, "What else should I know about spells and arts?", "dlg_5_24")
	StartConversation(conversation, NPC, Spawn, "Whether you're a front-lines melee type or someone attacking from a distance with weapons or spells, you should be using abilities that damage your foes effectively and efficiently. Right click on your spells and arts and select 'Examine' to see details on their effects.")
end

function dlg_5_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara031.mp3", "", "", 2411688474, 2950057017, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_5_25")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.")
	AddConversationOption(conversation, "Teach me the basics of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Using your highest-level versions of spells and arts will be more effective than using older versions. In addition, you should be upgrading your abilities to higher ranks to make them more effective. For more details on spells and combat arts, talk to Trainer Valtteri Yliveri.")
end

function dlg_5_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_arilla_larivaara/_exp03/exp03_cty_kelethin/tutorials/qst_larivaara/qst_laarivaara008.mp3", "", "", 2898686401, 1752530734, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.")
	AddConversationOption(conversation, "Tell me about melee combat.")
	AddConversationOption(conversation, "Tell me about ranged combat.", "dlg_5_26")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many different elements that go into successful combat. I can teach you a few of the basics, such as how to begin a fight, the difference between melee and ranged combat, and earning rewards for victory.")
end

