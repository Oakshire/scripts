--[[
    Script Name    : SpawnScripts/QueensColony/TrainerHaylMcGuinness.lua
    Script Author  : Jabantiz
    Script Date    : 2016.09.06 09:09:52
    Script Purpose : Trainer Hayl McGuiness Dialogue
    Modified Date  : 2020.04.04
    Modified by    : premierio015
    Notes          : Added animations
--]]

--[[
function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end
--]]

--[[
	Script Name	: SpawnScripts/QueensColony/TrainerHaylMcGuinness.lua
	Script Purpose	: Trainer Hayl McGuinness <Master of Combat Training>
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheArtOfCombat = 132

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   
   if HasCompletedQuest(Spawn, TheArtOfCombat) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good026.mp3", "", "agree", 1881020230, 3830147813, Spawn)
	        AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_8_28")
	        AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	        AddConversationOption(conversation, "I'll come back later.")
		StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. "! I'm here to teach new recruits the basics of combat. Murrar told me you show great promise!")
   elseif HasQuest(Spawn, TheArtOfCombat) and GetQuestStep(Spawn, TheArtOfCombat) < 4 then
		if GetQuestStep(Spawn, TheArtOfCombat) == 1 then
			-- on the first step			
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good026.mp3", "", "agree", 1881020230, 3830147813, Spawn)
			AddConversationOption(conversation, "I'd like to learn about combat so that I can help the colony.", "dlg_8_1")
			StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. "! I'm here to teach new recruits the basics of combat. Murrar told me you show great promise!")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good_quest001.mp3", "", "", 1571324247, 1735764796, Spawn)
			
			if GetQuestStep(Spawn, TheArtOfCombat) == 3 then
				AddConversationOption(conversation, "I was victorious!", "Victorious")
			end
			AddConversationOption(conversation, "Not yet, but I will soon.")
			StartConversation(conversation, NPC, Spawn, "So, did you defeat the sparring partner like I asked?")
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good026.mp3", "", "", 1881020230, 3830147813, Spawn)
	        AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_8_28")
	        AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	        AddConversationOption(conversation, "I'll come back later.")
		StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. "! I'm here to teach new recruits the basics of combat. Murrar told me you show great promise!")
	end
end

function Victorious(NPC, Spawn)
   SetStepComplete(Spawn, TheArtOfCombat, 3)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good_quest002.mp3", "", "agree", 1477689908, 1568507038, Spawn)
   AddConversationOption(conversation, "I'll report back to Murrar.")
   StartConversation(conversation, NPC, Spawn, "Great work! You've proven your worth and are ready for greater challenges. If you want further instruction later, just come see me. But right now you must report back to Murrar so that you can discover what's behind the trouble here at the colony.")
end



function dlg_8_1(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good_quest000.mp3", "", "agree", 861129842, 2513176543, Spawn)
	AddConversationOption(conversation, "How do I challenge a foe in battle?", "dlg_8_2")
	if HasQuest(Spawn, TheArtOfCombat) then
		if GetQuestStep(Spawn, TheArtOfCombat) == 1 then
			SetStepComplete(Spawn, TheArtOfCombat, 1)
		end
		AddConversationOption(conversation, "I will return victorious!")
	end
	StartConversation(conversation, NPC, Spawn, "Okay, let's see what you're made of. One of the nearby sparring partners to my left will be happy to test your mettle. Challenge any one of them and return to me when you've earned a victory.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good003.mp3", "", "nod", 1337742058, 2404050935, Spawn)
	AddConversationOption(conversation, "How do I begin the battle?", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Starting combat is easy. Just use your mouse pointer to left-click on an opponent. Its name will appear in the Target window in the upper left of your screen. You can also use the Tab key to cycle through nearby targets or the F8 key to select your closest enemy.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good004.mp3", "", "", 2853756515, 4008764495, Spawn)
	AddConversationOption(conversation, "So I can fight anyone or anything I want?", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "If you're close enough to your foe and want to start hitting it with your weapon, either click your Melee Attack button on your hotbar or press the ~ key. Or you can begin by using one of your spells or combat arts to get the enemy's attention. Remember, you must be close enough to actually hit them.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good005.mp3", "", "no", 1297419022, 3029770958, Spawn)
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_8_5")
	AddConversationOption(conversation, "Tell me about ranged combat.", "dlg_8_10")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "dlg_8_14")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can fight most non-player characters and creatures that you find outside your city, whether outdoors or in dungeons. Many non-player characters in the cities are there to help or give you quests, so you can't attack some of them. If you try, you'll get a message telling you that they aren't valid targets.")
end

function dlg_8_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good006.mp3", "", "brandish", 416525203, 2657385928, Spawn)
	AddConversationOption(conversation, "What classes specialize in melee combat?", "dlg_8_6")
	StartConversation(conversation, NPC, Spawn, "Melee combat means a toe-to-toe, physical confrontation. It is a combination of auto-attack damage that happens automatically when you press the Melee Attack button on your hotbar or the ~ key and spells or combat arts that you use in close proximity to your foe.")
end

function dlg_8_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good007.mp3", "", "nod", 1651948874, 1480304616, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_8_2")
	AddConversationOption(conversation, "Tell me about ranged combat.", "dlg_8_10")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "dlg_8_14")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Sturdy fighters such as Guardians, Berserkers, Monks, and Paladins stand at the front lines of battle facing the enemy. Crafty scouts such as Swashbucklers, Rangers, Troubadors, and Dirges generally stay close to their foes as well, but prefer to launch attacks from the back or side where they are less likely to be counterattacked.")
end

function dlg_8_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good008.mp3", "", "nod", 1478105613, 895646178, Spawn)
	AddConversationOption(conversation, "How do I launch a ranged attack?", "dlg_8_11")
	StartConversation(conversation, NPC, Spawn, "Ranged combat means that you put some distance between yourself and the enemy. This can be done with weapons such as bows or throwing daggers, or with spells and arts that can be cast from a distance.")
end

function dlg_8_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good009.mp3", "", "", 4078770069, 1143811293, Spawn)
	AddConversationOption(conversation, "What classes specialize in ranged combat?", "dlg_8_12")
	StartConversation(conversation, NPC, Spawn, "If you have a ranged weapon and ammunition, you can initiate ranged combat by using the Ranged Attack button on the Abilities tab of your Knowledge Book. You can drag this key to your hotbar if you like. Remember, you must have a ranged weapon in the Ranged slot of your inventory window and the correct type of ammunition in the Ammo slot.")
end

function dlg_8_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good010.mp3", "", "nod", 4251211849, 3911610409, Spawn)
	AddConversationOption(conversation, "How do I tell if I can use spells or arts from a distance?", "dlg_8_13")
	StartConversation(conversation, NPC, Spawn, "While most classes have the ability to attack from a distance, scout classes such as Swashbucklers, Troubadors, Dirges, and particularly Rangers specialize in ranged physical attacks. Mages, priests, and paladins have spells that do damage to their foes from a distance.")
end

function dlg_8_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good011.mp3", "", "", 4022476088, 3590432929, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_8_2")
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_8_5")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "dlg_8_14")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can right-click on a spell or art's icon and select 'Examine' to see what its range of effect is. In addition, if you target something and the icon for one of your spells or arts turns a dark red, that means the opponent is out of range of that ability.")
end

function dlg_8_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good012.mp3", "", "agree", 2647469623, 502375197, Spawn)
	AddConversationOption(conversation, "What do you mean by 'a worthy opponent'?", "dlg_8_15")
	StartConversation(conversation, NPC, Spawn, "Victory in battle can be very rewarding. Successful combat against a worthy opponent awards you experience (XP) to help you advance your level, as well as the chance at coin, usable items, and other valuables.")
end

function dlg_8_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good013.mp3", "", "nod", 3707215797, 2577902646, Spawn)
	AddConversationOption(conversation, "Are certain types of targets more rewarding than others?", "dlg_8_16")
	StartConversation(conversation, NPC, Spawn, "You don't earn rewards for defeating foes that are too far below your level. If your target has a grey name, it means it is very weak and won't provide any benefit for beating it. Talk to Trainer Marla Gilliam for more information on evaluating your opponents.")
end

function dlg_8_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good014.mp3", "", "agree", 2418682059, 3250675692, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_8_2")
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_8_5")
	AddConversationOption(conversation, "Tell me about ranged combat.", "dlg_8_10")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "The tougher a foe, the better its chances to provide a valuable reward. Though defeating enemies alone provides nice rewards, defeating heroic enemies that require a group is even more rewarding. The very best items come from banding together multiple groups to defeat epic opponents.")
end

function dlg_8_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good015.mp3", "", "nod", 3575809563, 632788793, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_8_18")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "dlg_8_21")
	AddConversationOption(conversation, "Tell me about using my abilities.", "dlg_8_24")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_8_28")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "There are many advanced combat techniques that you will learn over time. There's no substitute for experience," .. GetName(Spawn) .. ". I'd be happy to discuss a few of these advanced aspects, such as selecting the right opponent, knowing your surroundings, and using your abilities.")
end

function dlg_8_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good016.mp3", "", "nod", 3175726067, 1849673241, Spawn)
	AddConversationOption(conversation, "How do I tell if an opponent is too weak or too strong for me?", "dlg_8_19")
	StartConversation(conversation, NPC, Spawn, "Picking the right fight is crucial to victory. A weak opponent won't provide worthwhile rewards, while an overly powerful foe will result in your defeat. You need to keep your resources in mind as well as choosing the right target.")
end

function dlg_8_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good017.mp3", "", "point", 1334502220, 1072117512, Spawn)
	AddConversationOption(conversation, "What resources should I be keeping an eye on?", "dlg_8_20")
	StartConversation(conversation, NPC, Spawn, "Targeting an opponent will show you detailed information on its overall potency. Generally speaking, you'll find the best results from fighting opponents with blue, white, or yellow names. Talk to Trainer Marla Gilliam for more information on evaluating your opponents.")
end

function dlg_8_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good018.mp3", "", "no", 4117626633, 2141014135, Spawn)
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "dlg_8_21")
	AddConversationOption(conversation, "Tell me about using my abilities.", "dlg_8_24")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_8_28")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Starting a fight when you are low on health or power is a very bad idea. Your choice of targets also depends on whether you're alone or grouped with other players. Forming a group allows you to take on tougher and more rewarding challenges than you could face alone.")
end

function dlg_8_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good019.mp3", "", "scold", 2725345993, 3739954421, Spawn)
	AddConversationOption(conversation, "Anything else I should watch out for?", "dlg_8_22")
	StartConversation(conversation, NPC, Spawn, "Keeping your surroundings in mind is crucial to victory. Fighting in areas with lots of aggressive creatures is a bad idea, because they won't hesitate to gang up on you.")
end

function dlg_8_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good020.mp3", "", "cutthroat", 4260973055, 2919672507, Spawn)
	AddConversationOption(conversation, "Any other tips?", "dlg_8_23")
	StartConversation(conversation, NPC, Spawn, "Staying too long on the exact spot where you just defeated a foe can be dangerous. Another enemy is likely to show up there soon after, which can be an unpleasant surprise if you're already in another battle.")
end

function dlg_8_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good021.mp3", "", "nod", 2035277963, 965678861, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_8_24")
	AddConversationOption(conversation, "Tell me about using my abilities.", "dlg_8_24")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_8_28")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You should be aware of what's going on around you. Using your mouse wheel to scroll into third person and holding down the left mouse button allows you to move the camera around your character. It's a good idea to do this when fighting in dangerous areas to make sure nothing sneaks up on you.")
end

function dlg_8_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good022.mp3", "", "no", 3488047041, 965083005, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_8_25")
	StartConversation(conversation, NPC, Spawn, "Successful fighting isn't about turning on your auto-attack and walking away from battle. Your odds of victory are much better if you prepare well and are active during combat. You should be using every spell or combat art that has a positive effect on your chances to win.")
end

function dlg_8_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good023.mp3", "", "agree", 3086044683, 813829457, Spawn)
--      PlayFlavor keys are correct, but the VO doesn't work on Live or EMU.
	AddConversationOption(conversation, "What about during battle?", "dlg_8_26")
	StartConversation(conversation, NPC, Spawn, "Before you begin fighting, make sure you and your allies have activated all beneficial spells, also known as 'buffs,' so that you're operating at peak efficiency. Buffs can add health or power, increase your rate of regeneration, enhance your physical attributes, make you attack faster or do more damage, and more.")
end

function dlg_8_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good024.mp3", "", "nod", 2201642498, 2339371912, Spawn)
	AddConversationOption(conversation, "What else should I know about spells and arts?", "dlg_8_27")
	StartConversation(conversation, NPC, Spawn, "Whether you're a front-lines melee type or someone attacking from a distance with weapons or spells, you should be using abilities that damage your foes effectively and efficiently. Right click on your spells and arts and select 'Examine' to see details on their effects.")
end

function dlg_8_27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good025.mp3", "", "point", 1394782063, 4291748674, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "dlg_8_24")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "dlg_8_21")
	AddConversationOption(conversation, "Teach me the basics of combat.", "dlg_8_28")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Using your highest-level versions of spells and arts will be more effective than using older versions. In addition, you should be upgrading your abilities to higher ranks to make them more effective. For more details on spells and combat arts, talk to Trainer Myrrin the Magnific in the tower at the center of the colony.")
end

function dlg_8_28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_hayl_mcguinness/tutorial_island02_revamp/trainers/combat/combat_good002.mp3", "", "nod", 532377949, 602663688, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "dlg_8_2")
	AddConversationOption(conversation, "Tell me about melee combat.", "dlg_8_5")
	AddConversationOption(conversation, "Tell me about ranged combat.", "dlg_8_10")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "dlg_8_14")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "dlg_8_17")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Many elements go into successful combat. I can teach you a few of the basics, such as how to begin a fight, the difference between melee and ranged combat, and earning rewards for victory.")
end