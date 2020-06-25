--[[
    Script Name    : Spells/Priest/Shaman/BreathofSpirits.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:59
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 97 - 119
-- Increases Max Health of group members (AE) by 15.8
function cast(Caster, Target, MinHeal, MaxHeal, HP)
SpellHeal("Heal", MinHeal, MaxHeal)    
AddSpellBonus(Target, 606, HP)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

