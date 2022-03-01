--[[
    Script Name    : SpawnScripts/Graystone/WatcherCurmoglielKarthal.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.09 08:06:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    	PlayFlavor(NPC, "", "The Celestial Watch is ever vigilant. Rest will come only after the tyranny of evil can be undone.", "", 1689589577, 4560189, Spawn)

end

function respawn(NPC)

end

