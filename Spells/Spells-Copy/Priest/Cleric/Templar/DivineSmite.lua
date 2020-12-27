--[[
	Script Name	: Spells/Priest/Cleric/Templar/DivineSmite.lua
	Script Purpose	: Templar Direct Damage spell
	Script Author	: Zcoretri
	Script Date	: 2010.2.14
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)

    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
        SpellDamage(Target, DmgType, dmgAmount)
    end

end