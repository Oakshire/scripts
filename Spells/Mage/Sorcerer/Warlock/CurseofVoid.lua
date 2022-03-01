--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/CurseofVoid.lua
    Script Author  : neatz09
    Script Date    : 2019.04.24 12:04:01
    Script Purpose : 
                   : 
--]]

-- Decreases STR and INT of target by 19.4
-- Only affects targets level 20 and above
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)

end

function remove(Caster, Target, BonusAmt)
    RemoveSpellBonus(Target)
end

