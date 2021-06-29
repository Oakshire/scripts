--[[
    Script Name    : SpawnScripts/TempleStreetOld/ChuggleValvesplitter.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.29 09:06:14
    Script Purpose : 
    Script Notes   :  full dialogue is missing
--]]

local ChugglesToolbox = 483

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, ChugglesToolbox) == 2 then
	conversation = CreateConversation()
	StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can''t really help out much since those local 858 union members stole my blasted toolbox!")
	AddConversationOption(conversation, "I have found your toolbox", "complete")
	PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
end
   end

function complete(NPC, Spawn)
SetStepComplete(Spawn, ChugglesToolbox, 2)
end



function respawn(NPC)
	spawn(NPC)
end