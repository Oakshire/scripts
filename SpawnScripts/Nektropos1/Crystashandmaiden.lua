--[[
    Script Name    : SpawnScripts/Nektropos1/Crystashandmaiden.lua
    Script Author  : smash
    Script Date    : 2016.09.10 09:09:23
    Script Purpose : 
                   : 
--]]

function death(NPC, Spawn)
    local bed = GetSpawnByLocationID(GetZone(NPC), 439534)
    SpawnSet(bed, "show_command_icon", "1")
    SpawnSet(bed, "display_hand_icon", "1")
end