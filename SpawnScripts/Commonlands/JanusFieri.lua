--[[
    Script Name    : SpawnScripts/Commonlands/JanusFieri.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That's good to know.  See you around!")
    StartConversation(conversation, NPC, Spawn, "Greetings.  Janus Fieri, at your service.")
	PlayFlavor(NPC, "voiceover/english/janus_fieri/commonlands/quests/janusfieri/janusfieri001.mp3", "", "hail", 2406224045, 2387293986, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end