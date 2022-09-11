--[[
    Script Name    : SpawnScripts/IsleRefuge1/MizanVaeolin.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:36
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Mage2 = 5733

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if GetClass(Spawn)== 0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_nomage.mp3","You there!  Unregistered refugees are not permitted in this area.  Return to Garven Tralk and register at once.  You'll find him on the beach where you arrived.","no",777511365,1811810491, Spawn)
else
    if HasQuest(Spawn,Mage2)then	
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_mageintro.mp3","You there!  You are a wielder of the magic arts, yes?  I have need of your assistance.","",471449740,174970929, Spawn)
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetClass(Spawn)== 0 then
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_nomage.mp3","You there!  Unregistered refugees are not permitted in this area.  Return to Garven Tralk and register at once.  You'll find him on the beach where you arrived.","scold",777511365,1811810491, Spawn)
else
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't you see I am in the middle of my research.  What do you need?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin001.mp3", 1286845802, 4234951506)
	Dialog.AddOption("I will leave you to your research.")
	Dialog.Start()
    if GetQuestStep(Spawn, Mage2) ==1 then
    SetStepComplete(Spawn,Mage2,1)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end