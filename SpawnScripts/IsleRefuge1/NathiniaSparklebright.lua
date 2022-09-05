--[[
    Script Name    : SpawnScripts/IsleRefuge1/NathiniaSparklebright.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:26
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Spiritual enlightenment is as important to being as air to breathe or food to eat.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright001.mp3", 3193576979, 57142690)
	Dialog.AddOption("Thank you for that bit of wisdom.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end