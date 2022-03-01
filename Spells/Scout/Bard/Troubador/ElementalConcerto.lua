--[[
    Script Name    : Spells/Scout/Bard/Troubador/ElementalConcerto.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 02:09:01
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of raid and group members (AE) vs elemental damage by 554

function cast(Caster, Target, MitAmt)
    AddSpellBonus(Target, 201, MitAmt)

end


function remove(Caster, Target)
        RemoveSpellBonus(Target)


end


