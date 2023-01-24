--[[
    Script Name    : SpawnScripts/Antonica/atimberclawgnoll.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.09 01:07:44
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