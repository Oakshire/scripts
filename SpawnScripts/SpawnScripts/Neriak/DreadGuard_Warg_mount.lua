--[[
    Script Name    : SpawnScripts/Neriak/DreadGuard_Warg_mount.lua
    Script Author  : Cynnar
    Script Date    : 2018.05.26 09:05:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetMount(NPC, 7242)
	SetMountColor(NPC, 65, 52, 44, 58, 59, 151)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

