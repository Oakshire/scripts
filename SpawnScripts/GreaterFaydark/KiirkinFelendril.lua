--[[
	Script Name	: SpawnScripts/GreaterFaydark/KiirkinFelendril.lua
	Script Purpose	: Kiirkin Felendril 
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "STOP! Whatever you do...DON'T move!", "lookaway", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Ah, it's you! I hear all your coin disappeared from the bank!", "point", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Shh! There it is again. The whispering.  Can you hear it?", "listen", 1689589577, 4560189, Spawn)
	else
	end

end

