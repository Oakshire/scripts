--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/TapVeins.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 12:10:27
    Script Purpose : 
                   : 
--]]
--this needs to hit everything and tap each mob

function cast(Caster, Target, DmgType, MinVal, HealType, pctHealMin, pctHealMax)
    Say(Caster, "spell heals a portion of total amount of damage... not implemented.")

-- Applies Tap on termination.
--     Inflicts 543 disease damage on target        
SpellDamage(Target, DmgType, MinVal)
    --     Heals caster for 2.2 - 2.7% of max health
--         This effect cannot be critically applied.
--     The healing of this spell cannot be modified except by direct means
SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMin), GetPCTOfHP(Caster, pctHealMax), Caster, 2)

end

