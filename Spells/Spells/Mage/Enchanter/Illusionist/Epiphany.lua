--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Epiphany.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Buff)
    AddSpellBonus(Target, 603, Buff)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end

