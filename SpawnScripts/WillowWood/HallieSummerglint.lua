--[[
	Script Name	: SpawnScripts/WillowWood/HallieSummerglint.lua
	Script Purpose	: Hallie Summerglint <Shieldsmith>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange")    
end

function InRange(NPC,Spawn)
	if math.random(0, 100) <= 30 then
	FaceTarget(NPC, Spawn)
	GenericMerchantHail(NPC, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericMerchantHail(NPC, Spawn)
end