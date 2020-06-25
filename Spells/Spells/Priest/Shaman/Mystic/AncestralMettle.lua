--[[
    Script Name    : Spells/Priest/Shaman/Mystic/AncestralMettle.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 08:12:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StatAmt, ResistAmt)
    -- Increases STA of group members (AE) by 3.0
    AddSpellBonus(Target, 1, StatAmt)

    -- Increases Mitigation of group members (AE) vs noxious damage by 194
    AddSpellBonus(Target, 202, ResistAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end