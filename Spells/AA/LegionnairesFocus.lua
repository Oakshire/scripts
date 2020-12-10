--[[
    Script Name    : Spells/AA/LegionnairesFocus.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:44
    Script Purpose : 
                   : 
--]]

-- Increases Spell Doublecast of caster by 0.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 645, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end