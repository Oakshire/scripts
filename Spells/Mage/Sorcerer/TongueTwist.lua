--[[
    Script Name    : Spells/Mage/Sorcerer/TongueTwist.lua
    Script Author  : LordPazuzu
    Script Date    : 12/17/2022
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Interrupt(Caster, Target)
    
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
	
	if not IsEpic() then
			AddControlEffect(Target, 2)
	end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end