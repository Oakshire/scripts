--[[
    Script Name    : SpawnScripts/Antonica/SoldierSelennia.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.07 07:10:07
    Script Purpose : 
                   : 
--]]


require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Listen ... I only have a few minutes left.  Tell the commander ... the gnolls came from behind ... they took all of us out ... Arthur ... Garrin ... Dalathani ... the Greenleaf triplets.  And even little Skimpy!  Those fiends! They even killed Skimpy! I've lost too much ... blood. Tell him ... what happened.")
	Dialog.AddVoiceover("voiceover/english/optional1/soldier_selennia/antonica/soldierselennia000.mp3", 2094795288, 2230809684)
	Dialog.AddOption("Ok.")
	Dialog.Start()
end
