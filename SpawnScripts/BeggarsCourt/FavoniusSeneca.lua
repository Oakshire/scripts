--[[
	Script Name		: SpawnScripts/BeggarsCourt/FavoniusSeneca.lua
	Script Purpose	: Favonius Seneca
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mind your own business.  If you keep gawking, you'll walk away with a limp--and that's because I'm in a good mood today.")
	Dialog.AddVoiceover("voiceover/english/favonius_seneca/fprt_hood04/favoniusseneca000.mp3", 4143618696, 2550129080)
	Dialog.AddOption("Some mood... ")
	Dialog.Start()
end

