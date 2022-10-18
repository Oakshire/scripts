--[[
	Script Name	: SpawnScripts/Caves/analabasterbehemoth.lua
	Script Purpose	: an alabaster behemoth 
	Script Author	: LordPazuzu
	Script Date	: 10-8-2022
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")


function spawn(NPC)
	SetSpawnAnimation(NPC, 13016)
end

function respawn(NPC)
	spawn(NPC)
end




