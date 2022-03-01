--[[
    Script Name    : Spells/AA/RemarkableMobility.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:03
    Script Purpose : 
                   : 
--]]

-- Increases Damage Per Second of caster by 1.4

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end