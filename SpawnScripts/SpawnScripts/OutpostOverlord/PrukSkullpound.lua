--[[
	Script Name	: SpawnScripts/OutpostOverlord/PrukSkullpound.lua
	Script Purpose	: Pruk Skullpound <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function InRange(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Burn the tents!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Bring em back!  We'll pound em into the dirt.", "", 1689589577, 4560189, Spawn)
	else
               PlayFlavor(NPC, "", "I'm gonna take a souvenir back to Freeport.  Maybe a new set of ears!  Hahaha.", "", 1689589577, 4560189, Spawn)

	end

end

function LeaveRange(NPC, Spawn)

end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn)
end

function spawn(NPC, Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC, Spawn)
         spawn(NPC, Spawn)
end
