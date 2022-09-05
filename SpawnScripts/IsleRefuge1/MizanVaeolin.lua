--[[
    Script Name    : SpawnScripts/IsleRefuge1/MizanVaeolin.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:36
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't you see I am in the middle of my research.  What do you need?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin001.mp3", 1286845802, 4234951506)
	Dialog.AddOption("I will leave you to your research.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end