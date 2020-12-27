--[[
    Script Name    : Spells/Priest/Shaman/Defiler/AbhorrentSeal.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 09:10:59
    Script Purpose : 
                   : 
--]]


-- Decreases STR, AGI and WIS of target by 74.2

function cast(Caster, Target, Str, Agi, Wis)
    AddSpellBonus(Target, 0, Str)
    AddSpellBonus(Target, 2, Agi)
    AddSpellBonus(Target, 3, Wis)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end



