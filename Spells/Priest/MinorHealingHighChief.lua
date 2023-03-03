--[[
    Script Name    : Spells/Priest/MinorHealingHighChief.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.03 04:03:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    local zone = GetZone(Caster)
    local ChooseTarget = math.random(1,2)
    
    if ChooseTarget == 1 then
        local HealTarget = GetSpawnByLocationID(zone, 133775603)
        elseif
        ChooseTarget == 2 then
        local HealTarget = GetSpawnByLocationID(zone, 133775604)
        end
            
        SpellHeal("Heal", 45, 50, HealTarget)
end


