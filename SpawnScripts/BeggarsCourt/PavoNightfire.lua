--[[
	Script Name		: SpawnScripts/BeggarsCourt/PavoNightfire.lua
	Script Purpose	: Pavo Nightfire
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local ADramaticPerformance = 5679

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, ADramaticPerformance) == 1 then
        SetStepComplete(Spawn, ADramaticPerformance, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The guards don't patrol for our protection they patrol to keep us in line. This part of the city is a holding cell; it's more of a prison than Freeport! Ah, Freeport, I hear its streets are paved with gold!")
	Dialog.AddVoiceover("voiceover/english/pavo_nightfire/fprt_hood04/std_pavo_nightfire.mp3", 318731360, 4037507119)
	Dialog.AddOption("I highly doubt that.")
	Dialog.Start()
end

