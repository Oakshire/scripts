--[[
    Script Name    : Spells/Commoner/TheftofVitality.lua
    Script Author  : neatz09
    Script Date    : 2020.12.04 02:12:40
    Script Purpose : 
                   : 
--]]

-- Decreases STR of target by 70.2
-- Decreases STA of target by 35.1

function cast(Caster, Target, Str, Sta)
    AddSpellBonus(Target, 0, Str)
    AddSpellBonus(Target, 1, Sta)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end