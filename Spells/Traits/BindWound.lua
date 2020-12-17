--[[
    Script Name    : Spells/Traits/BindWound.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:10
    Script Purpose : 
                   : 
--]]

-- Heals caster for 25.0% of max health
--     This effect cannot be critically applied.
-- This effect cannot be cast during combat
-- Must not be engaged in combat

function cast(Caster, Target, Modifier)
    CurrHealth = GetHP(Caster)
    MaxHealth = GetMaxHP(Caster)
    if IsInCombat(Caster) then
        -- Do Nothing
    elseif CurrHealth < MaxHealth then
        healAmount = MaxHealth * Modifier
        ModifyHP(Caster, healAmount)
    end
end