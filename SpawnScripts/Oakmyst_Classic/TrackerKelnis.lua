--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/TrackerKelnis.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 05:10:57
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5510

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Enter the forest with caution, traveler!  You never know what dangers lurk in the Oakmyst.")
	Dialog.AddVoiceover("voiceover/english/tracker_kelnis/qey_adv01_oakmyst/trackerkelnis000.mp3", 2160349950, 3920623086)
    if GetQuestStep(Spawn, Delivery)==1 then
	Dialog.AddOption("I bring a message from Silentstrider about the location of Holly Windstalker's grave.","Holly")
    end
    Dialog.AddOption("I shall watch my steps within these woods.")
	Dialog.Start()
end

function Holly(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Holly Windstalker's grave!  Amazing!  I shall speak with Silentstrider about this matter soon. Thank you adventurer.  Let Silentstrider know I will relay word to The Greenhoods.")
	Dialog.AddVoiceover("voiceover/english/tracker_kelnis/qey_adv01_oakmyst/trackerkelnis001.mp3",1572302880, 579510228)
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddOption("I will let her know. Thank you.")
	Dialog.Start()
end

