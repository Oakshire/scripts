--[[
    Script Name    : Spells/Priest/MinorHealingGrimgash.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.02 10:03:59
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    local zone = GetZone(Caster)
    local Grimgash = GetSpawnByLocationID(zone, 133776469)
        
        SpellHeal("Heal", 50, 60, Grimgash)
end

