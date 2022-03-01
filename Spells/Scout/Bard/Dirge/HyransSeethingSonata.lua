--[[
    Script Name    : Spells/Scout/Bard/Dirge/HyransSeethingSonata.lua
    Script Author  : neatz09
    Script Date    : 2019.10.24 03:10:16
    Script Purpose : 
                   : 
--]]

-- Increases Hate Gain of target by 17.4%
-- Increases Aggression of target by 12.4

function cast(Caster, Target)
    AddSpellBonus(Target, 624, Hate)
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), Aggro)


end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end
