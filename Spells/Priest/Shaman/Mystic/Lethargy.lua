--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Lethargy.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 09:11:18
    Script Purpose : 
                   : 
--]]

-- Decreases Haste of target encounter by 13.4

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 617, BonusAmt)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
