--[[
	Script Name	: SpawnScripts/OutpostOverlord/MurgLeechtongue.lua
	Script Purpose	: Murg Leechtongue <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function InRange(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Captain, they have cows!  Lemme Kill!", "point", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Filthy elves!", "", 1689589577, 4560189, Spawn)
	else
	end

end

function LeaveRange(NPC, Spawn)

end

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end


function respawn(NPC)
         spawn(NPC)
end