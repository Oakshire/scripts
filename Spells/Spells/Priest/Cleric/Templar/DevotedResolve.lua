--[[
    Script Name    : Spells/Priest/Cleric/Templar/DevotedResolve.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 08:10:07
    Script Purpose : 
                   : 
--]]

-- Dispels 42 levels of any hostile effects on group members (AE)
function cast(Caster, Target, Amt)
    CureByType(Amt, 0, "Cure")
end

-- You cannot cast this spell while under the effects of something that supresses the use of group cures!