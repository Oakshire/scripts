--[[
    Script Name    : Spells/Scout/Rogue/Gouge.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.04 12:01:52
    Script Purpose : 
                   : 
--]]

function precast(Caster,Target)
	if IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be in front or flanking.", "yellow")
        return false
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
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)

end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end


