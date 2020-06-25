--[[
    Script Name    : Spells/Priest/Courage.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:25
    Script Purpose : 
                   : 
--]]

-- Increases STA of group members (AE) by 6.3
-- Increases Mitigation of group members (AE) vs physical damage by 61
function cast(Caster, Target, Sta, Mit)
    AddSpellBonus(Target, 1, Sta)
    AddSpellBonus(Target, 200, Mit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
