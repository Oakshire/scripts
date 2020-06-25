--[[
	Script Name	: SpawnScripts/SouthQeynos/ChroniclerSteelwill.lua
	Script Purpose	: Chronicler Steelwill <Concordium Mage>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	PlayFlavor(NPC, "voiceover/english/chronicler_steelwill/qey_south/100_soc_dwarf_concordium_steelwill_no_cdd2819c.mp3", "Welcome to the Three Towers.  Here we pass on our mystical knowledge to those who prove their magical prowess by serving the city of Qeynos.  ", "", 3294335366, 4186885926, Spawn)
end

