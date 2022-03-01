--[[
    Script Name    : Spells/Priest/Cleric/Templar/SymbolofMarzin.lua
    Script Author  : Zcoretri
    Script Date    : 2014.03.13
    Script Purpose : Templar Symbol of Marzin line
                   : 
--]]

function cast(Caster, Target, StatAmt, MitAmt)
    AddSpellBonus(Target, 1, StatAmt)
    AddSpellBonus(Target, 203, MitAmt)
end

function remove(Caster, Target, StatAmt, MitAmt)
    RemoveSpellBonus()
end

