--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/UnstoppableSoul.lua
    Script Author  : neatz09
    Script Date    : 2020.01.09 05:01:12
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Max Health of target by 12.0%
-- Increases Mitigation of target vs physical damage by 454

function cast(Caster, Target, HP, Mit)
    AddSpellBonus(Target, 607, HP)
    AddSpellBonus(Target, 200, Mit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
