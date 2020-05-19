--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/FortifyElements.lua
    Script Author  : Zcoretri
    Script Date    : 2013.09.12 15:47:05
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, PowerAmt, BonusAmt)
    AddSpellBonus(Target, 501, PowerAmt) -- Power
    AddSpellBonus(Target, 201, BonusAmt) -- vs Elemental

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

