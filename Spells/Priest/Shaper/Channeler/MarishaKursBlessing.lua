--[[
    Script Name    : Spells/Priest/Shaper/Channeler/MarishaKursBlessing.lua
    Script Author  : neatz09
    Script Date    : 2020.05.10 11:05:54
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of group members (AE) by 24.3
--     If fighter
-- Increases Mitigation of group members (AE) vs physical damage by 86
--     If not fighter
-- Increases Mitigation of group members (AE) vs elemental and noxious damage by 93

function cast(Caster, Target, MaxHP, Mit, EleNox)
    AddSpellBonus(Target, 606, MaxHP, 1)
    AddSpellBonus(Target, 200, Mit, 11, 21, 31)
    AddSpellBonus(Target, 201, EleNox)
    AddSpellBonus(Target, 202, EleNox)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end