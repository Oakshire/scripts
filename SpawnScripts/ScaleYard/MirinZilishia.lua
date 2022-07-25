--[[
	Script Name		: SpawnScripts/ScaleYard/MirinZilishia.lua
	Script Purpose	: Mirin Zilishia
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local AntiusPackage = 5651
local WillWorkforWar = 5703

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, AntiusPackage) == 1 then
        SetStepComplete(Spawn, AntiusPackage, 1)
    end
    if GetQuestStep(Spawn, WillWorkforWar) == 2 then
        SetStepComplete(Spawn, WillWorkforWar, 2)
    end

    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you bother me, I will act upon the thoughts that have been coursing through my head from the moment I saw you.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", 0, 0)
	Dialog.AddOption("I'm not sure I want to know what those are. Bye.")
	Dialog.Start()
end

