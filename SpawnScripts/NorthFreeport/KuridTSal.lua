--[[
    Script Name    : SpawnScripts/NorthFreeport/KuridTSal.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:06
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
Dialog1(NPC, Spawn)end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What brings you to the hallowed halls of the Temple of War?")
	Dialog.AddVoiceover("kurid_t_sal/fprt_north/trainer_inquisitor001.mp3", 4026214551, 82827314)
	Dialog.AddOption("Just looking around.")
	Dialog.Start()
end
