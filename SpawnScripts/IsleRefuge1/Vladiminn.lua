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
	SetPlayerProximityFunction(NPC, 16, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
if GetClass(Spawn)== 0 then
     PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3","Hey!  I'm quite certain we could make use of you here, but first you have to register with Garven right away.  That's it, stop staring and go back to the beach.","point",0,0, Spawn)
else   
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
end

function respawn(NPC)
	spawn(NPC)
end