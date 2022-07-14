--[[
	Script Name		:	DarmenSproutmore.lua
	Script Purpose	:	Darmen Sproutmore
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

local HowDidTheirGardenGrow = 5361

function spawn(NPC)
ProvidesQuest(NPC,5361)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore000.mp3", "", "",  2138797897, 3113209185)
    if not HasQuest(Spawn, HowDidTheirGardenGrow) and not HasCompletedQuest(Spawn, HowDidTheirGardenGrow) then
	AddConversationOption(conversation, "Your daisies look very nice.  You must be a fine gardener.", "Option1")
	elseif GetQuestStep(Spawn, HowDidTheirGardenGrow) == 2 then
	AddConversationOption(conversation, "The Knights of Thunder had an atrium underground.  ", "Option3")
	end
	AddConversationOption(conversation, "I must be off. Good day to you. ")
	StartConversation(conversation, NPC, Spawn, "Hail to you, adventurer! Mind your feet, and don't step on my dear little flowers! Just coming into bloom, they are.")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore001.mp3", "", "", 3489573816, 2242982097, Spawn)
	AddConversationOption(conversation, "What Knights of Thunder?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Thank you!  Gardening is my life.  I love tending the small, green things of the earth.  Why, some of these sprouts shall be tall trees one day.  And, many of my plants, will soon feed the people of Qeynos.  Hmm ... makes one wonder, though.  What do you suppose fed those Knights of Thunder so long ago?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore002.mp3", "", "", 2498400696, 3478793084, Spawn)
	AddConversationOption(conversation, "I may explore Stormhold some day.  If I find out how, I'll be sure to let you know.", "offer")
		AddConversationOption(conversation, "Maybe someday some brave explorer will find the answer. ")
	StartConversation(conversation, NPC, Spawn, "Oh, come now!  Surely you have heard the rumors that some explorers believe they found the location of the legendary Stormhold? ... The ancient fortress of the Knights of Thunder?  Personally, I think those \"explorers\" were crypt raiders, but what do I know?  Plants.  That's what I know.  And no one ever saw the Knights of Thunder growing their own plants ...  or hauling supply wagons out of Qeynos for that matter.  So, how do you suppose they fed themselves?  Hmm?")
end



function Option3(NPC, Spawn)
    SetStepComplete(Spawn, HowDidTheirGardenGrow, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  	PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore004.mp3", "", "", 3378309886, 1783566743, Spawn)
	AddConversationOption(conversation, "Aye, it is.")
	StartConversation(conversation, NPC, Spawn, "An atrium?  How marvelous!  They must've grown their food plants in the atrium.  Karana could've used his power to enchant the dark space with sunlight and water ... even under the ground.  Amazing, isn't it?")
end




function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, HowDidTheirGardenGrow)
end
