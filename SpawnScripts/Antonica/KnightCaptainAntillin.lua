--[[
	Script Name		:	Knight-CaptainAntillin.lua
	Script Purpose	:	Knight-Captain Antillin
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
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
	Dialog.AddDialog("I am Captain Antillin of the Coldwind Point Garrison. The roads ahead are infested with gnolls. No Antonican is safe. Turn back now.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_antillin/antonica/captainantillin000.mp3", 135895240, 1341774897)
	if GetQuestStep(Spawn, PeckettsPatrol) == 13 then
	Dialog.AddOption("Coldwind Point militia patrol reporting.", "Option1")
	end
	Dialog.AddOption("I shall heed your warning, Captain.")
	Dialog.Start()
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/knight-captain_antillin/antonica/captainantillin001.mp3",  841411724, 1572096111)
	Dialog.AddOption("What will you do?", "Option2")
	Dialog.AddDialog("Corporal Peckett has raised a militia patrol? Very good! You must return at once to Corporal Peckett and inform him that the entire squad has been lost within a gnoll hive.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, PeckettsPatrol, 13)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/knight-captain_antillin/antonica/captainantillin002.mp3", 4242603088, 1602660198)
	Dialog.AddOption("I wish you luck, Captain. For Qeynos!")
	Dialog.AddDialog("I must return to this hive to properly plot its location and uncover some of its mysteries before I report back to the generals of the Qeynos Guard. Now go! Before the gnolls have us both!")
	Dialog.Start()
end
