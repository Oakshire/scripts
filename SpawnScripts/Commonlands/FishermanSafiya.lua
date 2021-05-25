--[[
    Script Name    : SpawnScripts/Commonlands/FishermanSafiya.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll leave you alone then.")
	StartConversation(conversation, NPC, Spawn, "At least I can find peace and solitude in fishing.")
	PlayFlavor(NPC, "voiceover/english/fisherman_safiya/commonlands/quests/safiya/safiya000.mp3", "", "", 3380030652, 1664839299, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end