--[[
    Script Name    : Spells/Traditions/Frenzy.lua
    Script Author  : neatz09
    Script Date    : 2021.03.19 10:03:14
    Script Purpose : 
                   : 
--]]

-- Increases DPS of caster by 10.0

function cast(Caster, Target, Stat)
    AddSpellBonus(Target, 629, Stat)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end