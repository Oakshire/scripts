--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/BlessingofthePaladin.lua
    Script Author  : neatz09
    Script Date    : 2019.10.01 06:10:03
    Script Purpose : 
                   : 
--]]

-- Increases STA of caster by 25.1
-- Increases STR of caster by 42.3
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 1106

function cast(Caster, Target, Sta, Str, Mit)
    AddSpellBonus(Target, 1, Sta)--Sta
    AddSpellBonus(Target, 0, Str)--Str
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)

end


function remove(Caster, Target, Sta, Str, Mit)
    RemoveSpellBonus(Target)

end

