--[[
    Script Name    : Spells/Priest/Druid/Warden/ArmorofSeasons.lua
    Script Author  : theFoof
    Script Date    : 2013.12.10 12:12:25
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of group members (AE)
--     If fighter
-- Increases Mitigation of group members (AE) vs physical damage
--     If not fighter


function cast(Caster, Target, MaxHP, Mit)
    AddSpellBonus(Target, 606, MaxHP, 1)
    AddSpellBonus(Target, 200, Mit, 11, 21, 31)
end

function remove()
end

 