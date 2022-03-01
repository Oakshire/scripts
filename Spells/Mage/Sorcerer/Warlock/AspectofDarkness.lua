--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/AspectofDarkness.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.05 06:03:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PowerAmt, ResistAmt)
    -- Increases Max Power of group members (AE) by 20.8
    AddSpellBonus(Target, 501, PowerAmt)
    -- Increases Mitigation of group members (AE) vs noxious damage by 79
    AddSpellBonus(Target, 202, ResistAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

