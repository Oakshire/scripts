--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/CurseofDarkness.lua
    Script Author  : neatz09
    Script Date    : 2020.09.17 02:09:02
    Script Purpose : 
                   : 
--]]

-- On a hostile spell cast this spell will cast Curse of Darkness on target of spell.  
--     Inflicts 29 - 35 poison damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 5, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	if Type == 5 then
		SpellDamage(Target, DmgType, MinVal, MaxVal)
end

end

function remove(Caster, Target)
	RemoveProc(Target)
end