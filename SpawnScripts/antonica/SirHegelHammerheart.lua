--[[
    Script Name    : SpawnScripts/antonica/SirHegelHammerheart.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I must be on my way.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  I trust your travels are treating you well!")
	PlayFlavor(NPC, "voiceover/english/sir_hegel_hammerheart/antonica/sirhegelhammerheart000.mp3", "", "", 4144922678, 1888509817, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end