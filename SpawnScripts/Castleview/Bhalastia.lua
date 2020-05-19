--[[
	Script Name	: SpawnScripts/Castleview/Bhalastia.lua
	Script Purpose	: Bhalastia <Armorsmith>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericMerchantHail(NPC, Spawn)
end