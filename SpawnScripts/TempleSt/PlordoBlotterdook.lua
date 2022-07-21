--[[
	Script Name		: SpawnScripts/TempleStreet/PlordoBlotterdook.lua
	Script Purpose	: Plordo Blotterdook
	Script Author	: torsten
	Script Date		: 2022.07.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local DoortoDoorAnger = 5688

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, DoortoDoorAnger) == 1 then
        SetStepComplete(Spawn, DoortoDoorAnger, 1)
    end
    
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, yes, I am hurrying.  What can good 'ole Plordo sell you today?")
	Dialog.AddVoiceover("voiceover/english/merchant_plordo_blotterdook/fprt_hood03/mer_merchantplordoblotterdook.mp3", 438412116, 3436978899)
	Dialog.AddOption("I am not interested.  ")
	Dialog.Start()
end

