--[[
    Script Name    : SpawnScripts/Nektulos/Mugwump.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.16 06:05:53
    Script Purpose : Handles dialogue needed for quest "O' Mugwump Where Art Thou?"
                   : 
--]]

local OMugwumpWhereArtThou = 434

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn,  OMugwumpWhereArtThou) == 2 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Mooshga sent me to get her special herbs from you.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What can Mugwump do for you on this fine Nektulos day?")
	else
	PlayFlavor(NPC, "", "Why hello there. You look to be well this day. If you are looking for some adventuring; head west across the torrent river to the beach and look for dark elf fellow by the name of Bruhn. Too ornery for my liking, but he migh have something for you to do.", "", 0, 0, Spawn)
end
   end

function Option1(NPC, Spawn)
    SetStepComplete(Spawn, OMugwumpWhereArtThou, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks Mugwump.")
	StartConversation(conversation, NPC, Spawn, "Ahh, Mooshga always be losing things.  Lets me see if I have her herbs here somewhere...  There we go, take this package back to her, this is what she wants.")
end


function respawn(NPC)
	spawn(NPC)
end