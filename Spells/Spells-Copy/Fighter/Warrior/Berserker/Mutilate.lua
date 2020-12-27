--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Mutilate.lua
    Script Author  : neatz09
    Script Date    : 2019.10.14 07:10:19
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 4 - 14 slashing damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, DotMin, DotMax, AttkSpeed)
-- Inflicts 4 - 14 slashing damage on target    
SpellDamage(Target, DmgType, MinVal, MaxVal)
if LastSpellAttackHit() then
    -- Inflicts 10 slashing damage on target instantly and every 4 seconds
spellDamage(Target, DotType, DotMin, DotMax)
-- Decreases Haste of target by 5.1    
AddSpellBonus(Target, 617, AttkSpeed)
end
end


function tick(Caster, Target, DotType, DotMin, DotMax)
spellDamage(Target, DotType, DotMin, DotMax)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

        




