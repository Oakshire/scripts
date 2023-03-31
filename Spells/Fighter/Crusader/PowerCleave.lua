--[[
    Script Name    : Spells/Fighter/Crusader/PowerCleave.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.17 07:03:02
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    local wield_type = GetInfoStructUInt(Caster, "wield_type")
    if wield_type ~= 4 then
        SendMessage(Caster, "Must have a two-handed weapon equipped", "yellow")
        return false, 70
        end
    return true
end


function cast(Caster, Target, DmgType, MinVal, MaxVal, Parry)
    Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus  + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)
 
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
