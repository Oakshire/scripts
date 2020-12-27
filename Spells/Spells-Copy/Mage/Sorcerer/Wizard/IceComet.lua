--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/IceComet.lua
    Script Author  : neatz09
    Script Date    : 2019.10.08 03:10:40
    Script Purpose : 
                   : 
--]]

-- Inflicts 2837 - 5269 cold damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)   
-- Applies Knockdown on termination.  Lasts for 1.5 seconds.
--     Throws target back
--     Blurs vision of target
--     Stuns target
--     Does not affect Epic targets
if not IsEpic(Target) then
        Knockback(Caster, Target, 4000)
        BlurVision(Target, 1.0)
        AddSpellTimer(1500, "RemoveKnockback")
    end

end
