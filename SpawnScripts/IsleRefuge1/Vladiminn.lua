--[[
    Script Name    : SpawnScripts/IsleRefuge1/Vladiminn.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Scout2 = 5730

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You weathered the seas well, but are you fit enough to help on the island?")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn000.mp3", 1539680326, 2349388024)
	Dialog.AddOption("Fit, but currently unwilling.")
	Dialog.Start()
if HasQuest(Spawn, Scout2) then
    SetStepComplete(Spawn,Scout2,1)
end
end

function respawn(NPC)
	spawn(NPC)
end