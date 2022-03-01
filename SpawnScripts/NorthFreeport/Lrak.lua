--[[
    Script Name    : SpawnScripts/NorthFreeport/Lrak.lua
    Script Author  : Cynnar
    Script Date    : 2018.06.04 10:06:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function Talk(NPC, Spawn)
	Say(NPC, "WTF! Did you see him staring at me?")
end
