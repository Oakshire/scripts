--[[
	Script Name		:	CorporalPeckett.lua
	Script Purpose	:	Corporal Peckett
	Script Author	:	Jabantiz
	Script Date		:	08/27/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

local PeckettsPatrol = 5715

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer. I must warn you that Coldwind Point is not the safest place. Most of the garrison is on the march and the gnolls have been sighted nearby. I cannot guarantee your safety.")
	Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett000.mp3", 1322495237, 1823181494)
	if GetQuestStep(Spawn, PeckettsPatrol) == 1 then
	Dialog.AddOption("I hear you are in need of a militia. ", "Option1")
	elseif GetQuestStep(Spawn, PeckettsPatrol) == 14 then
	Dialog.AddOption("I have returned from patrol.", "Option3")    
	end
	Dialog.AddOption("I shall be fine. Thank you for the warning.")
	Dialog.Start()
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett001.mp3", 225815902, 3640648949)
	Dialog.AddOption("I am ready to march under your banner. ", "Option2")
	Dialog.AddOption("I will not join your militia. Farewell.")
	Dialog.AddDialog("With the bulk of the garrison marching after a gnoll raiding party, I am left in charge to defend this isle. Only a hired militia squad can provide us with the aid we seek.")
	Dialog.Start()
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, PeckettsPatrol, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett002.mp3", 1614024059, 542530014)
	Dialog.AddOption("For Qeynos!")
	Dialog.AddDialog("Then you must patrol this sector. Follow my notes to reach each patrol point. Once you have completed your rounds you may return to me for your pay. ")
	Dialog.Start()
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett003.mp3", 3875778649, 2743709608)
	Dialog.AddOption("Captain Antillin has discovered the gnoll den. He will return soon. ", "Option4")
	Dialog.AddDialog("What have you to report? ")
	Dialog.Start()
end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn, PeckettsPatrol, 14)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett004.mp3", 258241656, 1066283442)
	Dialog.AddOption("Is there nothing else I can do? ", "Option5")
	Dialog.AddDialog("Good work, militia. Their numbers increase and they venture closer and closer to dear Qeynos. This den must be where their army is being raised. May Bayle watch over Captain Antillin. ")
	Dialog.Start()
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett005.mp3", 2069330521, 2333324116)
	Dialog.AddOption("I will search for this cave.")
	Dialog.AddDialog("Search the area where you met up with Captain Antillin. There must be some cave close by and it must have answers to what the gnolls are up to.")
	Dialog.Start()
end
