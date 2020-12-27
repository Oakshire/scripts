--[[
    Script Name    : Spells/Scout/Rogue/Brigand/DesperateThrust.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 09:10:51
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

function cast(Caster, Target)
-- Inflicts 257 - 428 melee damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Decreases Defense of target by 15.7
    AddSkillBonus(Target, GetSkillIDByName("Defense"), TgtAmt)
-- Decreases Defense of caster by 17.4
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), CastAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
