--[[
    Script Name    : Spells/Mage/CureArcane.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.06 04:12:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    local level = ((GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 2, "", level)

end


