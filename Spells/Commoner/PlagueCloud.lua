--[[
	Script Name		:	Plaguecloud Ground Mount
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	11/17/2019
	Script Notes	:	
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, SkillAmt, Ground)
--Increases Oridination, Subjugation, Ministration, Disruption and Focus by 5.0
	AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ordination"), SkillAmt)
--Summons a mount to ride
	SetMount(Caster, 14760)
--Increases your ground speed by 130%
	AddSpellBonus(Caster, 611, Ground)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
	SetMount(Caster, 0)
end