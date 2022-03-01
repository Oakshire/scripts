--[[
    Script Name    : Spells/Commoner/FerventQuickening.lua
    Script Author  : neatz09
    Script Date    : 2020.04.12 01:04:22
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, PwrAmt, DefAmt)
	SpellHeal("Power", GetPCTOfPower(Caster, PwrAmt))
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefAmt)
end

function remove(Caster, Target)
	RemoveSkillBonus(Target)
end
