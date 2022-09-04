--[[
    Script Name    : SpawnScripts/IsleRefuge1/MasterMalvonicus.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 06:09:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	Dialog.AddDialog("What on Norrath are you doing here?  Get out of my house this instant!")
	Dialog.AddVoiceover("voiceover/english/master_malvonicus/tutorial_island02/mastermalvonicus001.mp3", 2916930572, 3452710584)
    Dialog.AddOption("I'm leaving.")
	Dialog.Start()end

function respawn(NPC)
	spawn(NPC)
end