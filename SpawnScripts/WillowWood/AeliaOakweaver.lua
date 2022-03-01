--[[
	Script Name	: SpawnScripts/WillowWood/AeliaOakweaver.lua
	Script Purpose	: Aelia Oakweaver <Provisioner>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")
dofile("SpawnScripts/Generic/EcologyEmotes.lua")

function spawn(NPC)
EcologyEmotes(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericMerchantHail(NPC, Spawn)
--	PlayFlavor(NPC, "", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1689589577, 4560189, Spawn)
end