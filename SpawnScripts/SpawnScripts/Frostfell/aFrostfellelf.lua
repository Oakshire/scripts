--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/aFrostfellelf.lua
	Script Purpose	: a Frostfell elf 
	Script Author	: Cynnar
	Script Date	: 2019.10.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Welcome to the Wonderland Village.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Maybe one day Mr. McScroogle will join in too.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Happy Frostfell!", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Even the Grump is joining in this year.", "", 1689589577, 4560189, Spawn)
	else
	end

end

