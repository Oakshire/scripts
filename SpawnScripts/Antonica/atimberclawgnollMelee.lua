--[[
    Script Name    : SpawnScripts/Antonica/atimberclawgnollMelee.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.09 01:07:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    


end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end