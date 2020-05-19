--[[
    Script Name    : Spells/Priest/CureCurse.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 03:10:41
    Script Purpose : 
                   : 
--]]

-- Dispels 88 levels of curse effects on target
-- You cannot cast this spell while under the effects of something that supresses the use of group cures!
-- Cannot be modified except by direct means
function cast(Caster, Target, Levels)
    CureByType(1, 5, "Cure", Levels)
end
