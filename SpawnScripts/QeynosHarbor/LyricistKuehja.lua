--[[
	Script Name	: SpawnScripts/QeynosHarbor/LyricistKuehja.lua
	Script Purpose	: Lyricist Kuehja <The Chaos Orchestra>
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Within an era not found, but lost. We students of discord were shunned and tossed. Tossed from halls, taverns and boats. Those once considered ilk refuse to honor our chaotic notes.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Shun the chaos and shun the growth. Ignore us and perfect insanity will be ours to boast.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Gathering lutes and gathering flutes. Pick up your pace we're off to a musical roost.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Long long ago where wordly harmony became a grove. That's where they met and danced in the musical webs we wove.", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Finally, the Chaos Orchestra has reformed to bring you fine people fine song.", "curtsey", 1689589577, 4560189, Spawn)
	end

end
