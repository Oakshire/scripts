--[[
    Script Name    : SpawnScripts/Antonica/TanenDanos.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.05 03:09:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Who is Clan McMarrin?", "Option1")
	AddConversationOption(conversation, "I'll take a look at what you have on tap.")
	StartConversation(conversation, NPC, Spawn, "Hello there, adventurer.  You must be a mite weary from your travels.  Relax and have a drink of my personal brew.  Barbarians brew the hardiest ales you'll ever put to your lips.  You ever hear of ol' Clan McMarrin's \"Blizzard Warmer?\"  That'll keep you going on those cold wintry nights!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll keep an eye out for them if I am out in that area.", "Option2")
		AddConversationOption(conversation, "I hope they have found a place to settle.")
	StartConversation(conversation, NPC, Spawn, "Clan McMarrin was a clan of the toughest barbarian warriors to have called dear old Halas home.  They have not been heard of for some time though.  After the Shattering they set out to find a place that barbarians could live as they did in Halas.  Word was they were looking toward the Thundering Steppes last anyone knew.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can understand that.")
	StartConversation(conversation, NPC, Spawn, "You would?  Aye, that is good to hear.  I like Qeynos and all, but us barbarians need a place we can call our own, you know?")
end



function respawn(NPC)
	spawn(NPC)
end