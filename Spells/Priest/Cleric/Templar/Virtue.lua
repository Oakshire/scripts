--[[
    Script Name    : Spells/Priest/Cleric/Templar/Virtue.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 04:10:37
    Script Purpose : 
                   : 
--]]

-- Increases STR and WIS of target by 117.3

function cast(Caster, Target, Stat, Mit)
    AddSpellBonus(Target, 0, Stat)
    AddSpellBonus(Target, 3, Stat)
-- Increases Mitigation of target vs elemental, noxious and arcane damage by 748    
AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end



