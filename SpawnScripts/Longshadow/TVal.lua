--[[
	Script Name		: SpawnScripts/LongshadowAlley/TVal.lua
	Script Purpose	: T`Val
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local ForThatSpecialSomeone = 5673

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, ForThatSpecialSomeone) == 1 then
        SetStepComplete(Spawn, ForThatSpecialSomeone, 1)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail to you.  Currency exchange, secure storage of goods, I offer a range of services tailored to the needs of Freeport guild members.")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval.mp3", 90970771, 1252206294)
	Dialog.AddOption("I'll keep that in mind.")
	Dialog.Start()
end

