--[[
	Script Name	: SpawnScripts/Castleview/ApprenticeBoggi.lua
	Script Purpose	: Apprentice Boggi 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Tool = 5457

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else     
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh! Hello! I wasn't... um... napping. I was just resting my injured leg. That's it!")
	Dialog.AddVoiceover("voiceover/english/apprentice_boggi/qey_village04/apprenticeboggi.mp3", 1068299089, 2686342617)
	if GetQuestStep(Spawn, Tool) ==1 then
	Dialog.AddOption("Froptub wanted me to find you.  He said you haven't delivered the new etching tool yet.", "ToolPickup")
    end
	Dialog.AddOption("I think I'll let you get back to resting your \"injury.\" Good bye.")
    Dialog.Start()
end
end

function ToolPickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, yes, the etching tool.  I have it right here.  Could you deliver it for me?  I don't think my leg will make it up the stairs to his smithy.")
	Dialog.AddVoiceover("voiceover/english/apprentice_boggi/qey_village04/apprenticeboggi000.mp3",2830477410, 146534045)
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
	Dialog.AddOption("I'll take the tool to Froptub and let you get back to resting your \"injury\".","Update")
	Dialog.AddOption("You must be joking. I'm not doing your work for you.")
   Dialog.Start()
end

function Update(NPC, Spawn)
    	SetStepComplete(Spawn, Tool, 1)
    end