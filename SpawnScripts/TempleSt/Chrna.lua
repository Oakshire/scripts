--[[
	Script Name		: SpawnScripts/TempleStreet/Chrna.lua
	Script Purpose	: Chrna
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local TheMissingBook = 5681

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, TheMissingBook) == 1 then
    	FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("I do not have that missing book! I don't know where it is. ")
	    Dialog.AddOption("I hope you don't lie...")
	    Dialog.Start()
        SetStepComplete(Spawn, TheMissingBook, 1)
    else
        Dialog1(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Chrna look for hidden treasures.  Maybe you see where they are, yes?  ")
	Dialog.AddVoiceover("voiceover/english/chrna/fprt_hood03/qst_chrna.mp3", 1920372216, 1161082682)
	Dialog.AddOption("I haven't seen any, but will keep an eye out for you.  Good luck!")
	Dialog.Start()
end

