--[[
    Script Name    : Spells/Priest/Shaman/Defiler/AbhorrentSeal.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 09:10:59
    Script Purpose : 
                   : 
--]]


-- Decreases STR, AGI and WIS of target by 74.2

function cast(Caster, Target, Stat)
    AddSpellBonus(Target, 0, Stat)
    AddSpellBonus(Target, 2, Stat)
    AddSpellBonus(Target, 3, Stat)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end



