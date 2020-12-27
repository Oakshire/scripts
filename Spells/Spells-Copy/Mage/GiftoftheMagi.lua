--[[
    Script Name    : Spells/Mage/GiftoftheMagi.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:08
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Max Power of group members (AE) by 20.8
-- Increases Mitigation of group members (AE) vs arcane damage by 123

function cast(Caster, Target, Pwr, Mit)
    AddSpellBonus(Target, 619, Pwr)
    AddSpellBonus(Target, 203, Mit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
