--[[
    Script Name    : Spells/Commoner/MysticMoppetDisguise.lua
    Script Author  : neatz09
    Script Date    : 2020.03.03 02:03:54
    Script Purpose : 
                   : 
--]]

function precast(Caster)
    return not IsInCombat(Caster)
end
-- Applies Mystic Moppet Disguise when activated.
function cast(Caster, Target)
-- Shapechanges caster into a Form of a mystic moppet.
SetIllusion(Caster, 149) 
-- Shrinks caster by 40.0%
    AddSpellBonus(Caster, 628, 40)
-- This effect cannot be cast during combat
end


function remove(Caster, Target)
ResetIllusion(Caster)
end
