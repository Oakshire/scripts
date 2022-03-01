--[[
    Script Name    : Spells/Scout/Bard/Troubador/ArcaneSymphony.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 03:09:14
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of raid and group members (AE) vs arcane damage by 252

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)

end


function remove(Caster, Target, BonusAmt)
    RemoveSpellBonus(Target)

end

