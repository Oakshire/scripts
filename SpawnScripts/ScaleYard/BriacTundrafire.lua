--[[
	Script Name		: SpawnScripts/ScaleYard/BriacTundrafire.lua
	Script Purpose	: Briac Tundrafire
	Script Author	: torsten
	Script Date		: 2022.07.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local SwordChucksofDoom = 5694

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, SwordChucksofDoom) == 1 then
        SetStepComplete(Spawn, SwordChucksofDoom, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("BARKEEP! Give me another round before I start getting angry!")
	Dialog.AddVoiceover("voiceover/english/briac_tundrafire/fprt_hood06/qst_briactundrafire.mp3", 1752525960, 1345151711)
	Dialog.AddOption("I'll leave you to your drink.")
	Dialog.Start()
end

