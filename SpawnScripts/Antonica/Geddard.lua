--[[
    Script Name    : SpawnScripts/antonica/Geddard.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/merchant_geddard/antonica/merchantgeddard000.mp3", "", "", 1542141863, 1883255955, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Nothing right now thanks.")
	StartConversation(conversation, NPC, Spawn, "Welcome to Gnollslayer Keep!  I'm Geddard, the only merchant for leagues.  If I don't got it, you don't need it!  What'll it be for you today?")
end


function respawn(NPC)
	spawn(NPC)
end