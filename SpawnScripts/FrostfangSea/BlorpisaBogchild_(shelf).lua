--[[
	Script Name	: SpawnScripts/FrostfangSea/BlorpisaBogchild_(shelf).lua
	Script Purpose	: Blorpisa Bogchild located at the Great Shelf
	Script Author	: theFoof
	Script Date	: 2013.06.02
	Script Notes	: 
--]]
local FieldTwo = 24

local WeaponChoice = 47

local DisarmingRyGorr = 48

local PerfectlyMissing = 49

local LastIngredient = 50

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	ProvidesQuest(NPC, WeaponChoice)
	ProvidesQuest(NPC, DisarmingRyGorr)
	ProvidesQuest(NPC, PerfectlyMissing)
	ProvidesQuest(NPC, LastIngredient)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, WeaponChoice) and not HasQuest(Spawn, WeaponChoice) then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_003.mp3", "", "", 3193177069, 1800399458, Spawn)
	    AddConversationOption(conversation, "Hello, Blorpisa.", "Quest1Chat_1")
	    StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. "! It is good to see you again!")
	elseif GetQuestStep(Spawn, WeaponChoice) == 1 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_004.mp3", "", "", 4181283850, 2893617958, Spawn)
		AddConversationOption(conversation, "No, I have not. Where can I find these weapons?", "Quest1Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you collected the weapons for me?")
	elseif GetQuestStep(Spawn, WeaponChoice) == 2 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_004.mp3", "", "", 4181283850, 2893617958, Spawn)
		AddConversationOption(conversation, "Yes, I have the weapons you requested.", "Quest1Chat_7")
		StartConversation(conversation, NPC, Spawn, "Have you collected the weapons for me?")
	elseif HasCompletedQuest(Spawn, WeaponChoice) and not HasCompletedQuest(Spawn, DisarmingRyGorr) and not HasQuest(Spawn, DisarmingRyGorr) then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_005.mp3", "", "", 1579551723, 976991105, Spawn)
		AddConversationOption(conversation, "I am always ready to do anything to ruin the Ry'Gorr plans.", "Quest2Chat_1")
		StartConversation(conversation, NPC, Spawn, "Have you rested? Do you feel refreshed and ready to thwart the Ry'Gorr?")
	elseif GetQuestStep(Spawn, DisarmingRyGorr) == 1 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_006.mp3", "", "", 2115424713, 269076828, Spawn)
		AddConversationOption(conversation, "Not yet. Where can I find these weapons?", "Quest2Chat_4")
		StartConversation(conversation, NPC, Spawn, "Have you cleansed the weapons?")
	elseif GetQuestStep(Spawn, DisarmingRyGorr) == 2 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_006.mp3", "", "", 2115424713, 269076828, Spawn)
		AddConversationOption(conversation, "I have cleansed the Ry'Gorr weapons.", "Quest2Chat_5")
		StartConversation(conversation, NPC, Spawn, "Have you cleansed the weapons?")
	elseif HasCompletedQuest(Spawn, DisarmingRyGorr) and not HasCompletedQuest(Spawn, PerfectlyMissing) and not HasQuest(Spawn, PerfectlyMissing) then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_007.mp3", "", "", 3686037916, 2573543704, Spawn)
		AddConversationOption(conversation, "I agree, no one else should die at the claws of the Ry'Gorr.", "Quest3Chat_1")
		StartConversation(conversation, NPC, Spawn, "These skirmishes with the Ry'Gorr have had me thinking of new modifications to my Frost-born Ward. It is not enough that the pilgrims be protected from the cold and animal attacks, they must also be protected from the magic that the Ry'Gorr wield.")
	elseif GetQuestStep(Spawn, PerfectlyMissing) == 1 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_008.mp3", "", "", 2666323814, 4844605, Spawn)
		AddConversationOption(conversation, "I have not yet found the core. Where can I find the ice slurries?", "Quest3Chat_3")
		StartConversation(conversation, NPC, Spawn, "Have you harvested the perfect ice slurry core?")
	elseif GetQuestStep(Spawn, PerfectlyMissing) == 2 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_008.mp3", "", "", 2666323814, 4844605, Spawn)
		AddConversationOption(conversation, "I have found the perfect ice slurry core.", "Quest3Chat_4")
		StartConversation(conversation, NPC, Spawn, "Have you harvested the perfect ice slurry core?")
	elseif HasCompletedQuest(Spawn, PerfectlyMissing) and not HasCompletedQuest(Spawn, LastIngredient) and not HasQuest(Spawn, LastIngredient) then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_009.mp3", "", "", 3631519683, 72729038, Spawn)
		AddConversationOption(conversation, "Is there a problem?", "Quest4Chat_1")
		StartConversation(conversation, NPC, Spawn, "Mithaniel's gall!")
	elseif GetQuestStep(Spawn, LastIngredient) == 1 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_010.mp3", "", "", 1541998982, 3704557731, Spawn)
		AddConversationOption(conversation, "No. Where can I find the aged ice slurries?", "Quest4Chat_5")
		StartConversation(conversation, NPC, Spawn, "Have you collected the aged ice slurry core?")
	elseif GetQuestStep(Spawn, LastIngredient) == 2 then
		PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_010.mp3", "", "", 1541998982, 3704557731, Spawn)
		AddConversationOption(conversation, "I have the aged ice slurry core.", "Quest4Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you collected the aged ice slurry core?")
	elseif HasCompletedQuest(Spawn, LastIngredient) then
		PlayFlavor(NPC, "", "Thanks for all of your help!", "thanks", 0, 0, Spawn)
	end
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, FieldTwo) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_011.mp3", "", "", 2022397228, 290072007, Spawn)
	AddConversationOption(conversation, "A bit cramped, actually.", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "How do you find the Great Shelf?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_012.mp3", "", "", 4283018282, 2903892824, Spawn)
	AddConversationOption(conversation, "I think they stomp more than crawl.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Agreed! I have not been able to hop about much, what with the Ry'Gorr orcs crawling all over this area.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_014.mp3", "", "", 736205101, 798079277, Spawn)
	AddConversationOption(conversation, "You want me to loot corpses?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "The coldain and the Ry'Gorr orcs are fighting a fierce battle southeast of here. I know you cannot take the weapons from the live coldain, but I am sure their fallen dead wouldn't mind you collecting their dormant weapons.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_015.mp3", "", "", 3812649727, 4013790608, Spawn)
	AddConversationOption(conversation, "Well, in that case, I will help you.", "Quest1Chat_5")
	AddConversationOption(conversation, "I'm still not looting corpses, I don't care how worthy the cause may be.")
	StartConversation(conversation, NPC, Spawn, "For a worthy cause! Any weapons you return to me I can enchant to do additional damage to the Ry'Gorr. I know they are resistant to ice, so I think a fire enchant would really hurt them.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_016.mp3", "", "", 717321044, 3158147617, Spawn)
	AddConversationOption(conversation, "I shall return to you once I have collected the weapons.", "OfferWeaponChoice")
	StartConversation(conversation, NPC, Spawn, "I'm glad that you have agreed to help the coldain. You can find the slain coldain southeast of here, upon a great battlefield.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thanks, Blorpisa.")
	StartConversation(conversation, NPC, Spawn, "You can find the weapons on the slain coldain that lie on the battlefield southeast of the Great Shelf.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_017.mp3", "", "", 4187444416, 2657798398, Spawn)
	AddConversationOption(conversation, "I'm glad that I was able to help. The Ry'Gorr orcs are a scourge upon this land.", "Quest1Chat_8")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. ". I will begin enchanting these weapons immediately and send them to the coldain as soon as I am able.")
end

function Quest1Chat_8(NPC, Spawn)
	SetStepComplete(Spawn, WeaponChoice, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_019.mp3", "", "", 3213450920, 2902031584, Spawn)
	AddConversationOption(conversation, "I will return once I am rested.")
	StartConversation(conversation, NPC, Spawn, "They are most vile indeed, preying upon pilgrims and sinking ships. If you want to continue to thwart the Ry'Gorr, return to me once you have eaten and rested. I will have more work for you then.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_020.mp3", "", "", 1335665620, 3336740356, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "It is good to see you committed to fighting the Ry'Gorr. I left the offensive against the Ry'Gorr to others but now I see that I too must do my part to fight them.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_021.mp3", "", "", 4091770286, 182089722, Spawn)
	AddConversationOption(conversation, "That sounds very awful.", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "The Ry'Gorr weapons are imbued with a dark miasma, one that must be cleansed. If the weapons are left as they are, they will taint the very ground and all of the creatures near.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_022.mp3", "", "", 4197171883, 263915525, Spawn)
	AddConversationOption(conversation, "If this must be done, then I shall do it.", "Quest2Chat_4")
	AddConversationOption(conversation, "This sounds dangerous, I must prepare myself before I can continue. I will return to you when I am ready.")
	StartConversation(conversation, NPC, Spawn, "It is very awful! Thankfully the Ry'Gorr are rather stupid when it comes to more complex spells and so it can be easily undone. I have made a poultice that will cleanse the weapons, dissolving the miasma.")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_025.mp3", "", "", 1812986023, 1861136256, Spawn)
	AddConversationOption(conversation, "I will return once I have cleansed the weapons.", "OfferDisarmingRyGorr")
	StartConversation(conversation, NPC, Spawn, "The weapons lay on the battlefield southeast of here.")
end


function Quest2Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_024.mp3", "", "", 3608040156, 1455978587, Spawn)
	AddConversationOption(conversation, "It worked very well, so well that it dissolved the Ry'Gorr weapons before my eyes.", "Quest2Chat_6")
	StartConversation(conversation, NPC, Spawn, "So the poultice worked?")
end

function Quest2Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_026.mp3", "", "", 771316187, 1400627586, Spawn)
	AddConversationOption(conversation, "I am just doing my job.", "Quest2Chat_7")
	StartConversation(conversation, NPC, Spawn, "Then the miasma must have been very deep. I am glad that you are here to help us, thanks to you a great danger has been averted.")
end

function Quest2Chat_7(NPC, Spawn)
	SetStepComplete(Spawn, DisarmingRyGorr, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_027.mp3", "", "", 1176369371, 2813456869, Spawn)
	AddConversationOption(conversation, "I appreciate the gesture, Blorpisa.")
	StartConversation(conversation, NPC, Spawn, "Even so, it is one few can do. Thank you, " .. GetName(Spawn) .. ". Please, accept this coin as a thank you from me.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_028.mp3", "", "", 3909433831, 280040798, Spawn)
	AddConversationOption(conversation, "Do you need me to collect it for you?", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "To that end, I have studied my texts and have determined the ingredient I need to begin to modify the spell.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_029.mp3", "", "", 1151875239, 4282449451, Spawn)
	AddConversationOption(conversation, "I shall search for the perfect ice slurry core so that you may complete your spell.", "OfferPerfectlyMissing")
	AddConversationOption(conversation, "Forget it, I'm not killing a bunch of ice slurries.")
	StartConversation(conversation, NPC, Spawn, "I do. It is called the perfect ice slurry core. You can harvest it from the ice slurries, but it is rare. Many times you will kill an ice slurry, only to find that its core has a flaw.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_030.mp3", "", "", 1741611934, 1901038615, Spawn)
	AddConversationOption(conversation, "I shall return as soon as I find the perfect core.")
	StartConversation(conversation, NPC, Spawn, "You can find the ice slurries on the hill south of the Great Shelf. Please hurry. The sooner you return with the core, the sooner I can perfect the spell to protect the pilgrims.")
end

function Quest3Chat_4(NPC, Spawn)
	SetStepComplete(Spawn, PerfectlyMissing, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_031.mp3", "", "", 826714400, 1486587557, Spawn)
	AddConversationOption(conversation, "Do you need my assistance further?", "Quest3Chat_5")
	StartConversation(conversation, NPC, Spawn, "I shall incorporate this perfect core into my spell. Thank you for harvesting this perfect ice slurry core.")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_033.mp3", "", "", 754123351, 1435387384, Spawn)
	AddConversationOption(conversation, "I shall return in a little while.")
	StartConversation(conversation, NPC, Spawn, "I do not know. Give me some time to incorporate this core and then return to me.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_034.mp3", "", "", 2303152841, 514356885, Spawn)
	AddConversationOption(conversation, "Please tell me I don't have to test it.", "Quest4Chat_2")
	StartConversation(conversation, NPC, Spawn, "This Frost-born Ward isn't taking to the modifications I made. It keeps having unexpected outcomes.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_035.mp3", "", "", 2152784278, 4092517503, Spawn)
	AddConversationOption(conversation, "Perhaps there was something wrong with the core?", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "No, you do not have to test it. I just don't understand why the perfect ice slurry core didn't work!")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_036.mp3", "", "", 2421741424, 974749894, Spawn)
	AddConversationOption(conversation, "Well, are there any other types of ice slurries?", "Quest4Chat_4")
	StartConversation(conversation, NPC, Spawn, "How could there be something wrong with it?! It was perfect!")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_037.mp3", "", "", 3543415032, 2306350142, Spawn)
	AddConversationOption(conversation, "I will get you an aged ice slurry core.", "OfferLastIngredient")
	AddConversationOption(conversation, "Sorry, I'm busy. Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "There are! There are aged ice slurries, but I thought their cores would be too old to use. You could try to obtain one for me, it couldn't hurt to try.")
end


function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_038.mp3", "", "", 2165797862, 1375729873, Spawn)
	AddConversationOption(conversation, "I shall return with an aged ice slurry core.")
	StartConversation(conversation, NPC, Spawn, "The aged ice slurries are in the same place as the others. They gather on the hill south of the Great Shelf.")
end

function Quest4Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_039.mp3", "", "", 469439028, 3249363787, Spawn)
	AddConversationOption(conversation, "Spell scribing seems fascinating.", "Quest4Chat_7")
	StartConversation(conversation, NPC, Spawn, "Quickly, I must incorporate it into the spell ink before the core loses its potency.")
end

function Quest4Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_041.mp3", "", "", 2408705067, 2217536445, Spawn)
	AddConversationOption(conversation, "So how's the Frost-born Ward coming along?", "Quest4Chat_8")
	StartConversation(conversation, NPC, Spawn, "Oh yes, most fascinating, until you turn yourself into an imp, or sweat fire.")
end

function Quest4Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_042.mp3", "", "", 829550711, 3566915207, Spawn)
	AddConversationOption(conversation, "Is that it?", "Quest4Chat_9")
	StartConversation(conversation, NPC, Spawn, "It seems to be combining successfully.")
end

function Quest4Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_043.mp3", "", "", 1150736225, 953291323, Spawn)
	AddConversationOption(conversation, "No more tests? No more running around?", "Quest4Chat_10")
	StartConversation(conversation, NPC, Spawn, "For now.")
end

function Quest4Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_044.mp3", "", "", 3571375839, 1539014597, Spawn)
	AddConversationOption(conversation, "Gee, I don't know what to say...", "Quest4Chat_11")
	StartConversation(conversation, NPC, Spawn, "I think not. I shall test this on myself, I am confident it will work. When it does, I will produce the parchments needed. Thank you for everything, "  .. GetName(Spawn) .. ". Between helping me scribe this spell and thwarting the Ry'Gorr, you have helped the people of New Halas more than you can know.")
end

function Quest4Chat_11(NPC, Spawn)
	SetStepComplete(Spawn, LastIngredient, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_045.mp3", "", "", 4192880371, 50904844, Spawn)
	AddConversationOption(conversation, "Thank you, Blorpisa. I am most honored.")
	StartConversation(conversation, NPC, Spawn, "Please, accept this as a token of our thanks.")
end

function OfferWeaponChoice(NPC, Spawn)
	OfferQuest(NPC, Spawn, WeaponChoice)
end

function OfferDisarmingRyGorr(NPC, Spawn)
	if not HasQuest(Spawn, DisarmingRyGorr) and not HasCompletedQuest(Spawn, DisarmingRyGorr) then
	    OfferQuest(NPC, Spawn, DisarmingRyGorr)
	end
end

function OfferPerfectlyMissing(NPC, Spawn)
	OfferQuest(NPC, Spawn, PerfectlyMissing)
end

function OfferLastIngredient(NPC, Spawn)
	OfferQuest(NPC, Spawn, LastIngredient)
end