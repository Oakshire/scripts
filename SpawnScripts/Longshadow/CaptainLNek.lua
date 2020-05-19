--[[
	Script Name	: SpawnScripts/Longshadow/CaptainLNek.lua
	Script Purpose	: Captain L`Nek <Freeport Militia>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/captain_l_nek/fprt_hood05/100_captain_lnek_multhail5_54f94dfc.mp3", "Hmm ... I am mistaken.  You are not the one I seek.", "", 3750262963, 2820443341, Spawn)
end