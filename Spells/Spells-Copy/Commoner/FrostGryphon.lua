--[[
    Script Name    : Spells/Commoner/FrostGryphon.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.17 08:03:49
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, Air)    
-- Summons a mount
SetMount(Caster, 13944)
AddControlEffect(Caster, 12)

    --Increases your Ground Speed by 75%
    --Increases your Air Speed by 150% 
    AddSpellBonus(Caster, 611, Speed)
    AddSpellBonus(Target, 612, Air)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
