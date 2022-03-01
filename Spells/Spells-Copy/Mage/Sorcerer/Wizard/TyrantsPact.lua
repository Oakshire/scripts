--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/TyrantsPact.lua
    Script Author  : Zcoretri
    Script Date    : 2013.13.12 19:30:32
    Script Purpose : Increases INT and STR of group members by BonusAmt
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt) -- INT
    AddSpellBonus(Target, 0, BonusAmt) -- STR
end

function remove(Caster, Target, BonusAmt)
    RemoveSpellBonus(Target)
end

