--[[
	Script Name	: SpawnScripts/WillowWood/Baynor.lua
	Script Purpose	: Baynor <Armorsmith>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericArmorsmithVoiceOvers.lua")

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericArmorsmithHail(NPC, Spawn, "good")
end