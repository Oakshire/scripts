--[[
    Script Name    : Spells/AA/ShieldShaping.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:39
    Script Purpose : 
                   : 
--]]

-- Caster will Parry 0.5% of incoming attacks
-- Increases caster's chance to block by 3.0%

function cast(Caster, Target, Parry, Block)
    AddSpellBonus(Target, 637, Parry)
    AddSpellBonus(Target, 651, Block)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end