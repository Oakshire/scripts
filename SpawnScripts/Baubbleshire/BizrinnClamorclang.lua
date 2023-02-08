--[[
	Script Name	: SpawnScripts/Baubbleshire/BizrinnClamorclang.lua
	Script Purpose	: Bizrinn Clamorclang 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Updated Dialog Module - 2022.08.21 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local PickUp = 5454

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
 else  
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh! Why hello there!  I am so behind on tinker work that I am not taking anymore orders at the moment ... What is it you want?")
	Dialog.AddVoiceover("voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang.mp3", 3866517974, 2558850199)

	Dialog.AddOption("I actually have a receipt to pick up a device for Bupipa Guryup.","Device1")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, PickUp , 1)

	Dialog.AddOption("Ah, that's too bad.  I guess I'll get my thingamajig whatchamacalit made somewhere else")
	Dialog.Start()
end

function Device1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh! Yes! The froglok songstress! I have the Sonance Volume Amplificator ready for her!")
	Dialog.AddVoiceover("voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang000.mp3", 3140666983, 3243864545)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("What does the device actually do?","umm")
	Dialog.Start()
end

function umm(NPC, Spawn)
    SetStepComplete(Spawn, PickUp, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why it makes her singing even LOUDER! We'll be able to hear her singing over in the Baubbleshire! Isn't that great?!")
	Dialog.AddVoiceover("voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang001.mp3", 1964116252, 2748280828)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddOption("Wonderful!")
	Dialog.AddOption("... I see. I'll take it to her.")
	Dialog.Start()
end
