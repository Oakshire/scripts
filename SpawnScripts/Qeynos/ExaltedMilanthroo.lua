--[[
	Script Name	: SpawnScripts/SouthQeynos/ExaltedMilanthroo.lua
	Script Purpose	: Exalted Milanthroo <Concordium Mage>
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

	PlayFlavor(NPC, "voiceover/english/exalted_milanthroo/qey_south/100_soc_erudite_concordium_officer_milanthroo_no_411d5ecb.mp3", "I'm afraid I cannot speak now, friend.  Please feel free to avail yourself of our knowledge.  Right now, the city requires my concentration.", "", 4266519249, 1817694849, Spawn)
end

