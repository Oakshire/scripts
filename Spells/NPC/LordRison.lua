--[[
    Script Name    : Spells/NPC/LordRison.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.04 04:02:28
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    AddSpellBonus(Caster, 629, 100)
    AddSpellBonus(Caster, 617, 50)
    AddSpellBonus(Caster, 702, 50)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)

end


