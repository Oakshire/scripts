--[[
    Script Name    : SpawnScripts/everfrost_frostfell_new01/Tinsel.lua
    Script Author  : neatz09
    Script Date    : 2019.12.08 11:12:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
local rand = math.random(1,2)
    if rand == 1 then
        Say(NPC, "Happy Frostfell, Adventurer!", Spawn)
    else
        Say(NPC, "May your days be merry and bright!", Spawn)    
    end   
end

function respawn(NPC)

end