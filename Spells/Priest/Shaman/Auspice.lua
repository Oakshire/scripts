--[[
    Script Name    : Spells/Priest/Shaman/Auspice.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:54
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Power, Health)
-- Increases Max Power of target by 57.4
    AddSpellBonus(Target, 619, Power)
-- Increases Max Health of target by 76.0
    AddSpellBonus(Target, 606, Health)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

