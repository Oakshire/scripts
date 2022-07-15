--[[
	Script Name		: SpawnScripts/StonestairByway/Kaman.lua
	Script Purpose	: Kaman
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local CasingtheJoint = 5652

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, CasingtheJoint) == 1 then
        SetStepComplete(Spawn, CasingtheJoint, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello! Your valuables are safe with Kaman. Trust me.  I'm the last of a long line of bankers. What guild do you belong to?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman.mp3", 1309348424, 2032495249)
	Dialog.AddOption("Maybe another time.")
	Dialog.Start()
end

