--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Chaos.lua
    Script Author  : Dello
    Script Date    : 12/06/2014
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target, ResistAmt)

    AddSpellBonus(Target, 200, ResistAmt)
end

-- Increases Mitigation of group members (AE) vs physical damage by 94



function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

