--[[
	Script Name	: Spells/Priest/Cleric/Inquisitor/Invocation.lua
	Script Author	: JohnAdams
	Script Date	: 2013.11.17 05:11:19
	Script Purpose	: Inquisitor Direct Damage spell + interrupt
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)

    -- DD component
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DmgType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DmgType, MinDmg)
    end

    -- Interrupt component
    if target ~= nil then
        Interrupt(Caster, Target)
    end

end