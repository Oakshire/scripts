--[[
	Script Name		: SpawnScripts/BeggarsCourt/LurinaGalla.lua
	Script Purpose	: Lurina Galla
	Script Author	: torsten
	Script Date		: 2022.07.17
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local RunningForACandidate = 5666

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, RunningForACandidate) == 1 then
        SetStepComplete(Spawn, RunningForACandidate, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You had better leave before my husband gets home. I'm not supposed to have guests while he's not around.")
	Dialog.AddVoiceover("voiceover/english/lurina_galla/fprt_hood04/std_lurina_galla.mp3", 2277358416, 3185524841)
	Dialog.AddOption("I guess I'll leave then.")
	Dialog.Start()
end

