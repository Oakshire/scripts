--[[
    Script Name    : Spells/Commoner/DiscordPrescientDisk.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.06 08:04:22
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, Health)  
-- Summons a mount
SetMount(Caster, 10984)
    Say(Caster, "Might not be accurate model")


-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed, Speed)


--Increases Max Heath of caster by 300.0
    AddSpellBonus(Caster, 606, Health)

-- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)


end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
RemoveControlEffect(Caster, 13)

end