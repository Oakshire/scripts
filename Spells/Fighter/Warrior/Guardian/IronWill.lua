--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/IronWill.lua
    Script Author  : neatz09
    Script Date    : 2020.10.28 03:10:39
    Script Purpose : 
                   : 
--]]

-- Increases STA of caster by 37.1
-- Reduces slow effects on caster by 13.5%
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 972

function cast(Caster, Target, Sta, Mit)
    AddSpellBonus(Target, 1, Sta)
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
