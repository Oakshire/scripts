--[[
    Script Name    : Spells/Mage/Sorcerer/Freeze.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:24
    Script Purpose : 
                   : 
--]]

-- Inflicts 133 - 162 cold damage on target
-- Stuns target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Say(Caster, "Resistability not implemented.")
	if not IsEpic() then
		AddControlEffect(Target, 4)
		end
		
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
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end