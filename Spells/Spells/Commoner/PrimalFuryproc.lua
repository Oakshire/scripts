--[[
    Script Name    : Spells/Commoner/PrimalFuryproc.lua
    Script Author  : neatz09
    Script Date    : 2020.02.22 08:02:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Cast, Haste, Multi)
    AddSpellBonus(Target, 664, Cast)
    AddSpellBonus(Target, 617, Haste)
    AddSpellBonus(Target, 641, Multi)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

-- Increases Ability Casting Speed of target by 7.2%
-- Increases Haste of target by 21.0
-- Increases Multi Attack of target by 21.0
