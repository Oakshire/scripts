--[[
    Script Name    : Spells/Scout/Bard/DishearteningDescant.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 12:12:06
    Script Purpose : 
                   : 
--]]

-- Decreases AGI and STR of target encounter by 27.4

function cast(Caster, Target, BuffAmt)
    Say(Caster, "Power upkeep not implemented")
	AddSkillBonus(Target, 0, BuffAmt)
    AddSkillBonus(Target, 2, BuffAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end