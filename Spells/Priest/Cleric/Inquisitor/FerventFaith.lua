--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/FerventFaith.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 12:10:45
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Dispels 140 levels of hostile Fear, hostile Root, hostile Stifle, hostile Stun, hostile Daze and hostile Mesmerize effects on caster
function cast(Caster, Target, Levels)
    CureByControlEffect(1, 1, "Cure", Levels)
    CureByControlEffect(1, 2, "Cure", Levels)
    CureByControlEffect(1, 3, "Cure", Levels)
    CureByControlEffect(1, 4, "Cure", Levels)
end

-- You cannot cast this spell while under the effects of something that supresses the use of group cures!
--not implemented