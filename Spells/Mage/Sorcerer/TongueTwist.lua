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
    Mastery = SpellLevel + 7
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
	
	if not IsEpic() then
			AddControlEffect(Target, 2)
	end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end