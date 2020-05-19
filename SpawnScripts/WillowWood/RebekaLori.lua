--[[
	Script Name	: SpawnScripts/WillowWood/RebekaLori.lua
	Script Purpose	: Rebeka Lori
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local choice = math.random(1, 2)
	if choice == 1 then
		Say(NPC, "Ah, you seem very busy. Be at peace, dear stranger.", Spawn)
	elseif choice == 2 then
		Say(NPC, "Another face I do not recognize. Are you new here, good traveler?", Spawn)
	end
end