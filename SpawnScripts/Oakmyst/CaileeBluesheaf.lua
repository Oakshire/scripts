--[[
	Script Name	: SpawnScripts/Oakmyst/CaileeBluesheaf.lua
	Script Purpose	: Cailee Bluesheaf 
	Script Author	: John Adams
	Script Date	: 2009.05.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "", "Truth be told, I never miss!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Blessings to you and your kin!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "We train to be the best!", "", 1689589577, 4560189, Spawn)
	end
end