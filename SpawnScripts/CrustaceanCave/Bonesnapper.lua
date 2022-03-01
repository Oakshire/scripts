--[[
    Script Name    : SpawnScripts/CrustaceanCave/Bonesnapper.lua
    Script Author  : jakejp
    Script Date    : 2018.12.26 08:12:17
    Script Purpose : Creating a simple raid for testing purposes
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(Target, Caster, SpellName)
    local zone = GetZone(Caster)
    local disturbed = 0 
    if SpellName == "Disturb Crab" and disturbed == 0 then
         disturbed = 1
         SpawnSet(Target, "targetable", 1)
         SpawnSet(Target, "attackable", 1)
         SpawnSet(Target, "show_level", 1)
         SpawnSet(Target, "faction", 1)
         SpawnSet(Target, "command_primary", 11)
         Attack(Target, Caster)
         SpawnByLocationID(zone, 378748)
    end
end

function death(NPC, Spawn)
         SpawnSet(Target, "targetable", 1)
         SpawnSet(Target, "attackable", 0)
         SpawnSet(Target, "show_level", 0)
         SpawnSet(Target, "faction", 0)
end

function aggro(NPC, Spawn)

end

function healthchanged(NPC, Spawn)
    local zone = GetZone(Spawn)
    local addSpawned = 0
    local health_percent = GetHP(NPC) / GetMaxHP(NPC)

    if health_percent <= 10 and addSpawned == 0 then 
         addSpawned = 1
         ClearHate(NPC)
         SpawnByLocationID(zone, 378748)
    end
end