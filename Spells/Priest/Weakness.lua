--[[
    Script Name    : Spells/Priest/Weakness.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:18
    Script Purpose : 
                   : 
--]]

-- Decreases STR of target by 9.6

function cast(Caster, Target, Str)
    AddSpellBonus(Target, 0, Str)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end



