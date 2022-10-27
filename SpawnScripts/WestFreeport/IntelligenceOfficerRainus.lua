--[[
    Script Name    : SpawnScripts/WestFreeport/IntelligenceOfficerRainus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:53
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
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't bother me now!  Emissary Millia just delivered a new set of reports I need to read over.")
	Dialog.AddVoiceover("intelligence_officer_rainus/fprt_west/quests/intelligence_officer_rainus000.mp3", 4151098788, 648293692)
	Dialog.AddOption("Sorry, I'll leave you to your work. ")
	Dialog.Start()
end

