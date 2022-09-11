--[[
    Script Name    : SpawnScripts/IsleRefuge1/BraksanSteelforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:38
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Fighter2 = 5731

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 16, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if GetClass(Spawn)== 0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","You look lost refugee.  All newcomers must first register with Garven Tralk at the beach.","no",0,0, Spawn)
else
    if HasQuest(Spawn,Fighter2)then	
    PlayFlavor(NPC,"voiceover/english/braksan_steelforge/tutorial_island02_fvo_fighterintro.mp3","You there!  You look like someone who can destroy those little green monsters.  I need your help.","hello",3168609453,174970929, Spawn)
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them.")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge001.mp3", 3328433629, 3720216759)
	Dialog.AddOption("I will leave you to your work.")
	Dialog.Start()
    if GetQuestStep(Spawn, Fighter2) ==1 then
    SetStepComplete(Spawn,Fighter2,1)
    end
end

function respawn(NPC)
	spawn(NPC)
end