--[[
	Script Name	: SpawnScripts/Caves/awhitespider.lua
	Script Purpose	: a white spider
	Script Author	: LordPazuzu
	Script Date	: 10/4/2022
	Script Notes	: 
--]]



function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end