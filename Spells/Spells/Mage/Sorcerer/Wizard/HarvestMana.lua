--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/HarvestMana.lua
    Script Author  : neatz09
    Script Date    : 2019.10.08 04:10:40
    Script Purpose : 
                   : 
--]]

-- Increases power of caster by 34 instantly and every second
function cast(Caster, Target, MinHeal)
    SpellHeal("Power", MinHeal)
    AddControlEffect(Target, 2)
end
    

function tick(Caster, Target, MinHeal)
SpellHeal("Power", MinHeal)
end

function remove(Caster, Target)
RemoveControlEffect(Target, 2)
end



