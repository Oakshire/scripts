--[[
    Script Name    : Spells/Commoner/OverclockedGnomishHoveringDevice.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.07 07:05:26
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, STA, Speed)   
-- Summons a mount
SetMount(Caster, 5997)

--Increase maxmana of caster by 20.0
    AddSpellBonus(Caster, 1, STA)

   --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

-- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
RemoveControlEffect(Caster, 13)

SetMount(Caster, 0)

end
