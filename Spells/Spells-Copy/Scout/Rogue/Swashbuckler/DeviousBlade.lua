--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/DeviousBlade.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:32
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 443 - 542 melee damage on target

--[[function cast(Caster, Target)
SpellDamage(Target, DmgType, MinVal, MaxVal)
if LastSpellAttackHit() then
AddProc
end--]]



-- On a melee hit this spell will cast Blamed on target of attack.  Lasts for 10.0 seconds.  
--     Increases Hate Gain of target by 30.0%
--     Grants a total of 1 trigger of the spell.
--   AddSpellBonus(Target, 624, Hate)
