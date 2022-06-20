--[[
    Script Name    : SpawnScripts/NorthFreeport/OctaviusSyntral.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:53
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
if GetFactionAmount(Spawn,12)<0 then
PlayFlavor(NPC, "","", "shakefist", 0, 0, Spawn)
else

Dialog3(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well my services don't come cheap.  The cost involved would equal roughly twice what the local vendors would pay to get rid of the spell.")
	Dialog.AddOption("Pricey, but better then letting it go to waste.")
	Dialog.AddOption("Maybe some other time.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As a service to the Overlord, I can transcribe certain Master scrolls that would otherwise be useless to citizens of Freeport.")
	Dialog.AddOption("Which scrolls do you consider useless?", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings Citizen.  Are you in need of my transcription services?")
	Dialog.AddOption("Transcription services?", "Dialog2")
	Dialog.AddOption("No thanks.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My specialties include transcription of Conjuror, Illusionist, Mystic, Monk, Paladin, Ranger, Swashbuckler and Templar scrolls.  The results deliver a scroll useable by a class in Freeport, of the equivalent skill level.")
	Dialog.AddOption("I assume there's a cost involved?", "Dialog1")
	Dialog.Start()
end

