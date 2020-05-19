--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/KaylieBrianne.lua
	Script Purpose	: Kaylie Brianne 
	Script Author	: Cynnar
	Script Date	: 2019.10.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Woah... woah... Oh no!!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Oh no! I can't stay standing... it's too slippery!", "", 1689589577, 4560189, Spawn)
	else
	end

end

