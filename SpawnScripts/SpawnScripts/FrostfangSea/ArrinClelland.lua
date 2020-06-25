--[[
	Script Name	: SpawnScripts/FrostfangSea/ArrinClelland.lua
	Script Purpose	: Arrin Clelland <Camp Provisioner>
	Script Author	: theFoof
	Script Date	: 2013.5.12
	Script Notes	: Ememjr 2017.10.21 changed refs of Player to Spawn
--]]

local CrustoseRemoval = 6

local RepellingCritters = 7

local ScragglyFoodstuffs = 9

local FrigidFishing = 10

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, CrustoseRemoval)
    ProvidesQuest(NPC, RepellingCritters)
	ProvidesQuest(NPC, ScragglyFoodstuffs)
	ProvidesQuest(NPC, FrigidFishing)
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
	if HasCompletedQuest(Spawn, CrustoseRemoval) == false and HasQuest(Spawn, CrustoseRemoval) == false then
	    PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_001.mp3", "", "", 316593235, 3019636341, Spawn)
	    AddConversationOption(conversation, "" .. GetName(Spawn) .. ".  My boat was attacked and destroyed by the orcs, apparently.", "Quest1Chat_2")
	    StartConversation(conversation, NPC, Spawn, "I don't recognize you, newcomer, but welcome.  I'm Arrin, the camp provisioner.  Who are you?")
	elseif GetQuestStep(Spawn, CrustoseRemoval) == 1 then
	    PlayFlavor(NPC, "", "It's a good thing I sent you after lichen and not lycan!", "chuckle", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, CrustoseRemoval) == 2 then
	    PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
		AddConversationOption(conversation, "What are you going to do with the crustose spore samples?", "Quest2Chat_1")
		StartConversation(conversation, NPC, Spawn, "I see you were successful, " .. GetName(Spawn) .. ".  That is great news!")
	elseif HasCompletedQuest(Spawn, CrustoseRemoval) and HasQuest(Spawn, RepellingCritters) == false and HasCompletedQuest(Spawn, RepellingCritters) == false then
	    PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_010.mp3", "", "", 2177024399, 2827013799, Spawn)
		AddConversationOption(conversation, "What are you going to do with the crustose spore samples?", "Quest2Chat_1")
		StartConversation(conversation, NPC, Spawn, "You certainly helped us by getting those crustose spore samples, " .. GetName(Spawn) .. ".")
	elseif GetQuestStep(Spawn, RepellingCritters) == 1 then
	    if HasItem(Spawn, 45806) == false then
		    SummonItem(Spawn, 45806, 1)
		end
	    AddConversationOption(conversation, "Me too.")
		AddConversationOption(conversation, "How do I use the crustose repellent?", "Quest2Chat_4")
		StartConversation(conversation, NPC, Spawn, "I hope the crustose repellent works.")
	elseif GetQuestStep(Spawn, RepellingCritters) == 2 then
	    PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_021.mp3", "", "", 1180705969, 2151107815, Spawn)
	    AddConversationOption(conversation, "The repellent worked great!", "Quest2Chat_5")
	    StartConversation(conversation, NPC, Spawn, "How did it go out there?")
	elseif GetQuestStep(Spawn, RepellingCritters) == 3 then
	    if HasItem(Spawn, 45805) == false then
		    SummonItem(Spawn, 45805, 1)
		end
	    PlayFlavor(NPC, "", "Be sure to apply enough of the crustose repellent to our barrels of foodstuff.", "nod", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, RepellingCritters) == 4 then
	    SetStepComplete(Spawn, RepellingCritters, 4)
		
		PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_024.mp3", "", "", 117755636, 4146358523, Spawn)
		AddConversationOption(conversation, "You are welcome.", "Quest3Chat_1")
		StartConversation(conversation, NPC, Spawn, "Those crustose creatures sure disappeared!  That will certainly help me keep mouths fed around here.  Thank you, " .. GetName(Spawn) .. "!")
	elseif HasCompletedQuest(Spawn, RepellingCritters) and HasCompletedQuest(Spawn, ScragglyFoodstuffs) == false and HasQuest(Spawn, ScragglyFoodstuffs) == false then
	    Quest3Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, ScragglyFoodstuffs) == 1 then
	    PlayFlavor(NPC, "", "Not much wants to grow in such an unforgiving environment, but hopefully you will find a few scraggly shrubs growing on the windy cliffs overlooking the sea, northeast of me.", "nod", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, ScragglyFoodstuffs) == 2 then
	    PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_006.mp3", "", "", 1163105313, 2486934582, Spawn)
		AddConversationOption(conversation, "I was.", "Quest3Chat_3")
		StartConversation(conversation, NPC, Spawn, "Not much wants to grow in such an unforgiving environment, but I hope that you were able to find us a few edible items to add to our stores, " .. GetName(Spawn) .. ".")
	elseif HasCompletedQuest(Spawn, ScragglyFoodstuffs) and HasCompletedQuest(Spawn, FrigidFishing) == false and HasQuest(Spawn, FrigidFishing) == false then
	    Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, FrigidFishing) == 1 then
	    PlayFlavor(NPC, "", "The Iceclad cod are too smart for lures or nets, but they should offer you little challenge in a fight.", "agree", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, FrigidFishing) == 2 then
	    PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_012.mp3", "", "", 2983925092, 3211744371, Spawn)
		AddConversationOption(conversation, "I'm not cleaning them though.", "Quest4Chat_3")
		StartConversation(conversation, NPC, Spawn, "You've returned, and with an arm full of fresh fish for us, " .. GetName(Spawn) .. ".  That's wonderful!")
	elseif HasCompletedQuest(Spawn, FrigidFishing) then
	    PlayFlavor(NPC, "", "Thank you for all of your help.  Truly, you have been sent to us by the gods!", "thanks", 1689589577, 4560189, Spawn)
    end
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_001.mp3", "", "", 316593235, 3019636341, Spawn)
	AddConversationOption(conversation, "My boat was attacked and destroyed by the orcs, apparently.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "That was a great feat, I'm telling you!  So, what happened, " .. GetName(Spawn) .. "?")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_002.mp3", "", "", 364246106, 545315196, Spawn)
	AddConversationOption(conversation, "Me too.", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "Ah, that does explain how you ended up here.  They've been trying to stop any and all ships from docking on Erollis and providing more forces to New Halas.  I'm glad that you survived.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_003.mp3", "", "", 3988738726, 2897027247, Spawn)
	AddConversationOption(conversation, "You don't have any food?", "Quest1Chat_5")
	AddConversationOption(conversation, "Well, keep thinking warm thoughts.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Of course that doesn't mean the hard part is over, mind you.  I'd say you've jumped out of the frying pan to land in the fire, but that just reminds me how nice it would be to have food and a warm fire.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_004.mp3", "", "", 684238252, 3234255296, Spawn)
	AddConversationOption(conversation, "I can help you.", "Quest1Chat_6")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "I have some, sure, but it's not fit for man or beast, anymore.  Bothersome, little lichen creatures keep breaking into our stores and spoiling them.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_005.mp3", "", "", 4016452199, 1810004622, Spawn)
	AddConversationOption(conversation, "Right away!", "OfferCrustoseRemoval")
	AddConversationOption(conversation, "I refuse to squish fungus men!  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I would appreciate it, " .. GetName(Spawn) .. ".  Slay any of the crustose defenders or sporetenders you find on the western side of the isle in search of spore samples.  They congregate there amongst the big stones.  Return to me when you have done this.")
end

function Quest2Chat_1(NPC, Spawn)
    if HasCompletedQuest(Spawn, CrustoseRemoval) == false then
	    SetStepComplete(Spawn, CrustoseRemoval, 2)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_015.mp3", "", "", 2583587651, 4014807200, Spawn)
	AddConversationOption(conversation, "I like your thinking!", "Quest2Chat_2")
	AddConversationOption(conversation, "But killing them is more enjoyable.", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "We are going to use the crustose spore samples to create a repellent against the little spoilers.  There will be no need to kill them if we can just make them stay away.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_017.mp3", "", "", 2609708421, 904219877, Spawn)
	AddConversationOption(conversation, "Sure thing.", "OfferRepellingCritters")
	AddConversationOption(conversation, "How do I use the crustose repellent?", "Quest2Chat_4")
	AddConversationOption(conversation, "On second thought, maybe not.")
	StartConversation(conversation, NPC, Spawn, "Thanks.  Now take this repellent potion and apply it on crustose sporetenders.  They are the ones spreading their spores around.  I hope to Marr that they shuffle their stems away from here!  Be sure to use it on a good number of different ones so that we are sure of its effects.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_018.mp3", "", "", 3283115264, 905683886, Spawn)
	AddConversationOption(conversation, "I like your thinking!", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "Perhaps, but I would rather you be able to turn your fighting skills on more challenging foes, like those blasted orcs that are attacking the camp here.")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_019.mp3", "", "", 2496773416, 2201749960, Spawn)
	AddConversationOption(conversation, "I'll remember that.", "OfferRepellingCritters")
	StartConversation(conversation, NPC, Spawn, "Ah, Good question!  Open your inventory and you will find it.  You can either equip it, or you can choose to use it directly from your inventory, but either way you have to target a crustose sporetender first.  Then right click on the object and choose 'Use.'  This will spread the repellent on your target.")
end

function Quest2Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, RepellingCritters, 2)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_022.mp3", "", "", 457686629, 137846411, Spawn)
	AddConversationOption(conversation, "I'll get right on it.")
	AddConversationOption(conversation, "Where are the provisions?", "Quest2Chat_6")
	StartConversation(conversation, NPC, Spawn, "That is a relief!  Now apply it to our provisions right here and keep the bothersome creatures away from them!")
end

function Quest2Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_023.mp3", "", "", 2487757767, 4041358970, Spawn)
	AddConversationOption(conversation, "I will get right on it!")
	StartConversation(conversation, NPC, Spawn, "They are the barrels here, northwest of me.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_005.mp3", "", "", 4016452199, 1810004622, Spawn)
	AddConversationOption(conversation, "What can I do for you?", "Quest3Chat_2")
	AddConversationOption(conversation, "Unfortunately, I am too busy right now.")
	StartConversation(conversation, NPC, Spawn, "Say, I could use your help with replenishing those barrels now that you've removed the lichen creatures.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_005.mp3", "", "", 4016452199, 1810004622, Spawn)
	AddConversationOption(conversation, "I'll gather them for you.", "OfferScragglyFoodstuffs")
	AddConversationOption(conversation, "I'm more of a hunter, not a gatherer.")
	StartConversation(conversation, NPC, Spawn, "There are some rather scraggly looking shrubs that grow on the windy cliffs overlooking the sea, northeast of here.  Take the path behind me, and you can't miss them.  Their tubers aren't very appetizing, but they are rich in nutrition.")
end

function Quest3Chat_3(NPC, Spawn)
    SetStepComplete(Spawn, ScragglyFoodstuffs, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_007.mp3", "", "", 256610018, 4036678874, Spawn)
	AddConversationOption(conversation, "You're welcome. ", "Quest4Chat_1")
	AddConversationOption(conversation, "Can I help you with anything else?", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "Oh, that's better than I would have hoped!  Thank you!")
end

function Quest4Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_008.mp3", "", "", 2456971105, 1721744123, Spawn)
	AddConversationOption(conversation, "Yeah, I can do that.", "Quest4Chat_2")
	AddConversationOption(conversation, "Oh, sorry.  That isn't really my thing.")
	StartConversation(conversation, NPC, Spawn, "May I ask another favor of you?  I was hoping you might be keen on getting us some fresh fish, too.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_011.mp3", "", "", 3182846019, 423433267, Spawn)
	AddConversationOption(conversation, "That's no problem.", "OfferFrigidFishing")
	StartConversation(conversation, NPC, Spawn, "It would help us a great deal.  You'll find the Iceclad cod surrounding this island within the freezing waters.  They are not enticed by lures or nets, so you'll have to fight them.")
end

function Quest4Chat_3(NPC, Spawn)
    SetStepComplete(Spawn, FrigidFishing, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "arrin_clelland/halas/pilgrims_landing/clelland_013.mp3", "", "", 1935077662, 3458701305, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	AddConversationOption(conversation, "On to other adventures!")
	StartConversation(conversation, NPC, Spawn, "Ha ha ha!  That's fine!  I can do that.  I have asked too  much of you, as it stands.  One as powerful and brave as you have bigger adventures and challenges to meet.  Thank you again!")
end

function OfferCrustoseRemoval(NPC, Spawn)
    if HasCompletedQuest(Spawn, CrustoseRemoval) == false then
	    OfferQuest(NPC, Spawn, CrustoseRemoval)
	end
end

function OfferRepellingCritters(NPC, Spawn)
    if HasCompletedQuest(Spawn, CrustoseRemoval) then
	    OfferQuest(NPC, Spawn, RepellingCritters)
    end
end

function OfferScragglyFoodstuffs(NPC, Spawn)
    if HasCompletedQuest(Spawn, RepellingCritters) then
	    OfferQuest(NPC, Spawn, ScragglyFoodstuffs)
	end
end

function OfferFrigidFishing(NPC, Spawn)
    if HasCompletedQuest(Spawn, ScragglyFoodstuffs) then
	    OfferQuest(NPC, Spawn, FrigidFishing)
	end
end
