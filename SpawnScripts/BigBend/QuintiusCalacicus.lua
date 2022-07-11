--[[
	Script Name		: SpawnScripts/BigBend/QuintiusCalacicus.lua
	Script Purpose	: Quintius Calacicus
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local PayingTheTab = 5625

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, PayingTheTab) and not HasCompletedQuest(Spawn, PayingTheTab) then
        SetStepComplete(Spawn, PayingTheTab, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Freeport Reserve. Will you entrust me with your valuables and cash? I'll take fine care of them.")
	Dialog.AddVoiceover("voiceover/english/banker_quintius_calacicus/fprt_hood1/bnk_quintiuscalacicus_hail.mp3", 3742555178, 748563821)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

