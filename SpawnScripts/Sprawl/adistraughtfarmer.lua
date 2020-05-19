--[[
	Script Name	: SpawnScripts/Sprawl/adistraughtfarmer.lua
	Script Purpose	: a distraught farmer 
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "", "Please brave one, drive them away!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Help me, I beg you!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		Say(NPC, "They defile my land and steal my crops!", Spawn)
	elseif choice == 4 then
		Say(NPC, "They may be bad, but the walking rats are worse...", Spawn)
	end
end