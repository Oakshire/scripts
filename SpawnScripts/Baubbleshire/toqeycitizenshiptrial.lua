--[[
    Script Name    : SpawnScripts/Baubbleshire/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 08:08:36
    Script Purpose : 
                   : 
--]]
--\\\\##FFFF00You pull an application for citizenship from the wall.

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end