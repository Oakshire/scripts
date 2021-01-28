--[[
    Script Name    : SpawnScripts/TimorousDeep/RozokalNibamok.lua
    Script Author  : Ememjr
    Script Date    : 2021.01.28 10:01:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes please, I don't know much about that stuff.", "Option1")
	AddConversationOption(conversation, "Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.", "Option2")
	AddConversationOption(conversation, "No thanks, I have other things to do right now.")
	StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
OfferQuest(NPC, Spawn,11)
	AddConversationOption(conversation, "I'll get right on it.")
	StartConversation(conversation, NPC, Spawn, "Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
OfferQuest(NPC, Spawn,11)
	AddConversationOption(conversation, "I'll get right on it.")
	StartConversation(conversation, NPC, Spawn, "Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end


