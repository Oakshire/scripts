--[[
    Script Name    : Spells/DragonsVitality.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:33
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.8%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 606, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end