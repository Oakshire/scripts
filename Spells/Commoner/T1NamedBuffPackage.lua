--[[
    Script Name    : Spells/Commoner/T1NamedBuffPackage.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.06 04:02:49
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    AddSpellBonus(Caster, 629, 100)
    AddSpellBonus(Caster, 617, 50)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)

end

