--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/AspectofGenius.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Pow, Mit)
    AddSpellBonus(Target, 619, Pow)
    AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end

