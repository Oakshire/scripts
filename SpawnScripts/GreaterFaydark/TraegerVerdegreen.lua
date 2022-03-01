--[[
	Script Name	: SpawnScripts/GreaterFaydark/TraegerVerdegreen.lua
	Script Purpose	: Traeger Verdegreen 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/traeger_verdegreen/_exp03/exp03_cty_kelethin/quest/quest_wood_elf_01_hail_96c288a3.mp3", "The Fae have really made Kelethin what it is today.", "", 3187813743, 3153290793, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/traeger_verdegreen/_exp03/exp03_cty_kelethin/quest/quest_wood_elf_01_hail_3fb4a76d.mp3", "There are so many Fae now.", "", 1959195557, 1316598135, Spawn)
	else
	end

end

