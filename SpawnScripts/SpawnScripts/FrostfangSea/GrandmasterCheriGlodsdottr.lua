--[[
	Script Name	: SpawnScripts/FrostfangSea/GrandmasterCheriGlodsdottr.lua
	Script Purpose	: Grandmaster Cheri Glodsdottr <Trades Coordinator>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "If you wish to learn about crafting, speak to the tradeskill tutorial trainer.", "point", 1689589577, 4560189, Spawn)
end