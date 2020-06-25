--[[
    Script Name    : Spells/Priest/Druid/Warden/FavoroftheWild.lua
    Script Author  : theFoof
    Script Date    : 2014.1.14
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StatBuff, Avoid, MitBuff)
    AddSpellBonus(Target, 2, StatBuff)
    AddSpellBonus(Target, 3, StatBuff)
    AddSpellBonus(Target, 696, Avoid)
    AddSpellBonus(Target, 201, MitBuff)
    AddSpellBonus(Target, 202, MitBuff)
    AddSpellBonus(Target, 203, MitBuff)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

