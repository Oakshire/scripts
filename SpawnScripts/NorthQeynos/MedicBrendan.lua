--[[
    Script Name    : SpawnScripts/NorthQeynos/MedicBrendan.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.25 06:09:39
    Script Purpose : 
                   : 
--]]

local AntiVenomComponentsForBrendan = 5362

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, AntiVenomComponentsForBrendan) and not HasCompletedQuest(Spawn, AntiVenomComponentsForBrendan) then
	AddConversationOption(conversation, "I don't need any symbols or spells, but perhaps the Temple has need of me in another capacity?", "Option1")
	elseif GetQuestStep(Spawn, AntiVenomComponentsForBrendan) == 3 then
	AddConversationOption(conversation, "I've brought the poison sacs you requested.", "Option3")
	end
	AddConversationOption(conversation, "No thanks, just browsing.")
    StartConversation(conversation, NPC, Spawn, "May the light of the Prime Healer guide you.  My spells and religious symbols will aid you in your quest to further the cause of good. Please, come closer, adventurer.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Great!  Sign me up!", "Option3")
		AddConversationOption(conversation, "No thanks.  Sounds too mundane for me.")
	StartConversation(conversation, NPC, Spawn, "Another capacity?  Well, we do need help gathering components for our potions. We supply the guards with an antidote in case something poisonous attacks them on their rounds.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Very well, I guess I'll be off to the caves then.", "offer")
	StartConversation(conversation, NPC, Spawn, "Splendid! Now, pay close attention. We need the venom sacs of white spiders and albino cave snakes. I'll write down in your journal the amount we need and where you can find them. ")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, AntiVenomComponentsForBrendan, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Just knowing that such a thing is possible is a comfort to me.")
	StartConversation(conversation, NPC, Spawn, "Wonderful!  These samples will do nicely!  Don't be surprised if one day these very venom sacs save the life of one of our guards.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, AntiVenomComponentsForBrendan)
end

function respawn(NPC)
	spawn(NPC)
end