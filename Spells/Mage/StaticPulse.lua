--[[
    Script Name    : Spells/Mage/StaticPulse.lua
    Script Author  : LordPazuzu
    Script Date    : 12/6/2022
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DoTType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    
    
    SpellDamage(Target, DoTType, MinDmg, MaxDmg)
    SpawnSet(Target,"visual_state",11737)
end


function tick(Caster, Target, DoTType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DoTType, MinDmg, MaxDmg)
end
