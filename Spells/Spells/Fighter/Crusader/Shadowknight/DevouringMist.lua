--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DevouringMist.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 01:10:53
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Applies Devouring Mist.  Lasts for 1 minute 12 seconds.
--     Increases Mitigation of caster vs physical damage by 216
-- Decreases Mitigation of target encounter vs physical damage by 1234

function cast(Caster, Target, CsterAmt, TgtAmt)
    Say(Caster, "This Spell is not setup for AoE correctly. mitigation is also increased per target.")

AddSpellBonus(Caster, 200, CstrAmt)
AddSpellBonus(Target, 200, TgtAmt)
end
    
function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
