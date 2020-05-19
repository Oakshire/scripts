--[[
	Script Name	: SpawnScripts/Castleview/Bleemeb.lua
	Script Purpose	: Bleemeb <Spell Scrolls>
	Script Author	: Jabantiz
	Script Date	: 4/24/2017
	Script Notes	: Old script was just a note to collect on live so gave a generic merchant script.
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