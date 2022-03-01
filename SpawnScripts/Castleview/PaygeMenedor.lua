--[[
	Script Name	: SpawnScripts/Castleview/PaygeMenedor.lua
	Script Purpose	: Payge Menedor <Shieldsmith>
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