--[[
    Script Name    : SpawnScripts/Generic/ADarkbladeAssassin.lua
    Script Author  : Ememjr
    Script Date    : 2019.10.06 04:10:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function group_dead(NPC, Spawn)
    local zone = GetZone(Spawn)
    local Spawn2 = GetSpawnByLocationID(zone, 1586531)
    Say(NPC, "group_dead triggered")
    -- if not nil then first group is dead
    if GetTempVariable(Spawn2,"FirstGroupDead") ~= nil then
        -- spawn named here
        SpawnByLocationID(zone, 1586529)
        SpawnByLocationID(zone, 1586530)
    elseif GetTempVariable(Spawn2,"FirstGroupDead") == nil then
        -- if nil then this is first group and set to 1
        Say(Spawn, "I killed the first group")
        SetTempVariable(Spawn2,"FirstGroupDead",1)
    end
end
function respawn(NPC)
    local zone = GetZone(NPC)
    SetTempVariable(Spawn2,"FirstGroupDead", nil)
end

