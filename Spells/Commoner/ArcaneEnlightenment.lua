--[[
    Script Name    : Spells/Commoner/ArcaneEnlightenment.lua
    Script Author  : LordPazuzu
    Script Date    : 2-26-2023
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases power of caster by 20.0%
-- When Damage is received this spell has a 50% chance to cast Enlightenment on caster. Lasts for 1 minute 30 seconds.
--             Increases power of caster by 40.0%
--                 This effect cannot be critically apllied.
--                     Grants 8 triggers of the spell.

function cast(Caster, Target, Power, Triggers)
    MaxPow = GetMaxPower(Caster)
    PowHeal = math.floor(MaxPow * 0.2)
    SpellHeal("Power", PowHeal, PowHeal, Caster)
    
    AddProc(Caster, 15, 50)
    SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, Power, Triggers)
    CastSpell(Caster, 2550391, 1)
    RemoveTriggerFromSpell()
end 

function remove(Caster, Target)
RemoveProc(Target)
end