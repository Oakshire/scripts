--[[
    Script Name    : Spells/AA/Chronosiphoning.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 07:12:42
    Script Purpose : 
                   : 
--]]

-- Decreases Ability Casting Speed of target by 18.0%
-- Increases Ability Casting Speed of caster by 9.0%

function cast(Caster, Target, Debuff, Buff)
    AddSpellBonus(Target, 664, Debuff)
    AddSpellBonus(Caster, 664, Buff)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end