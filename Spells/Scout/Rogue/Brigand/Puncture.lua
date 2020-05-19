--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Puncture.lua
    Script Author  : Zcoretri
    Script Date    : 14.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, AttackSpeed)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 612, AttackSpeed)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

