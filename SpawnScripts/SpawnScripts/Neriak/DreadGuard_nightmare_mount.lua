--[[
    Script Name    : SpawnScripts/Neriak/DreadGuard_nightmare_mount.lua
    Script Author  : Cynnar
    Script Date    : 2018.05.13 01:05:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetMount(NPC, 7183)
	SetMountColor(NPC, 69, 67, 80, 255, 255, 255)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

