--[[
	Script Name	: SpawnScripts/ButcherblockMountains/DockworkerSeeley.lua
	Script Purpose	: Dockworker Seeley 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)

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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Thank Brell we built that wall. Who knows what sort of evil lurks within that old mansion.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Best of luck to you, adventurer. These lands are sure to offer more than your share of excitement.", "", 1689589577, 4560189, Spawn)
	end

end

