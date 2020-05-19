--[[
    Script Name    : SpawnScripts/everfrost_frostfell_new01/GuhtosleGigglegibber.lua
    Script Author  : neatz09
    Script Date    : 2019.12.08 11:12:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
   local rand = math.random(1,2)
    if rand == 1 then
        Say(NPC, "Merry Frostfell!", Spawn)
    else
        Say(NPC, "Frostfell Blessings!", Spawn)    
    end
end
function respawn(NPC)

end