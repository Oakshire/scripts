--[[
    Script Name    : Spells/Scout/Predator/ShadowBlade.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.27 04:03:47
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 82 - 137 melee damage on target
*You must be sneaking to use this ability.
*Must be flanking or behind

--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
        return false
    end

if not IsFlanking(Caster, Target) then
    SendMessage(Caster, "Must be flanking or behind", "yellow")
    return false
end

return true

end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MaxVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
 
end