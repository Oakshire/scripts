--[[
	Script Name	: SpawnScripts/WillowWood/BrigetCrestmyst.lua
	Script Purpose	: Briget Crestmyst <Weaponsmith>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericWeaponsmithVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericWeaponsmithHail(NPC, Spawn, "good")
end