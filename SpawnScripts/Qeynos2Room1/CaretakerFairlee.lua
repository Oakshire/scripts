--[[
    Script Name    : SpawnScripts/Qeynos2Room1/CaretakerFairlee.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.28 08:08:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end



function InRange(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/caretaker_fairlee/qey_ph_1r01/100_city_caretaker_fairlee_housing_callout1_bd9d430e.mp3", "You must be the new tenant.  Allow me to introduce myself.", "hello", 90341496, 1787511893, Spawn)
end

function hailed(NPC, Spawn)
Dialog1 (NPC,Spawn)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("I'm the caretaker of these apartments, and I'm to see to it that you're settled in to your new place.  I know it may not look like much right now, but with all the refugees coming in on a daily basis, this is about all we can do.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee001.mp3", 3717538538, 588872219)
	Dialog.AddOption("It's more than I could have ever expected.  Thank you!", "AllWeCanDo")
	Dialog.Start()
end

function AllWeCanDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Think nothing of it. Let me go over a few rules about the place: Pets must be house trained. If guests stay longer than a month, please let us know. Finally, please ask any visiting bards to sing quietly at night -- some people go to sleep early around here.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee002.mp3", 4044688594, 3625376816)
	Dialog.AddOption("[continue]", "continue")
	Dialog.Start()
end

function continue(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("Oh, I almost forgot! The Ironforge Exchange has a welcome gift for you. It's a piece of furniture to liven up your home. Go ahead and put it wherever you want.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee003.mp3", 3943554629, 4275156589)
	Dialog.AddOption("Thank you.  Let me place it now.", "PlaceItNow")
	Dialog.Start()
end


function respawn(NPC)
	spawn(NPC)
end