--[[
    Script Name    : SpawnScripts/everfrost_frostfell_new01/NathanIronforge.lua
    Script Author  : neatz09
    Script Date    : 2019.12.08 11:12:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
local rand = math.random(1,2)
    if rand == 1 then
        Say(NPC, "mmmnnthm mthmmnnn!!", Spawn)
    else
        Say(NPC, "Coulth you gef me some hop wawer?", Spawn)    
    end 
end

function respawn(NPC)

end

