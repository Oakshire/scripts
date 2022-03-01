--[[
    Script Name    : Spells/Fighter/Crusader/PledgeofArmament.lua
    Script Author  : neatz09
    Script Date    : 2020.02.24 08:02:11
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Mitigation of target vs physical damage by 73
-- Decreases Mitigation of caster vs physical damage by 162

function cast(Caster, Target, TgtMit, CastMit)
    AddSpellBonus(Target, 200, TgtMit)
    AddSpellBonus(Caster, 200, CastMit)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)

end
