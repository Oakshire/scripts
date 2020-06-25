--[[
    Script Name    : Spells/Priest/Shaman/WailingHaze.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:08
    Script Purpose : 
                   : 
--]]

-- Decreases Haste of target by 9.9

function cast(Caster, Target, Haste)
AddSpellBonus(Target, 617, Haste)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
