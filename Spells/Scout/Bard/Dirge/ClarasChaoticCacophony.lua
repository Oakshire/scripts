--[[
    Script Name    : Spells/Scout/Bard/Dirge/ClarasChaoticCacophony.lua
    Script Author  : neatz09
    Script Date    : 2020.01.24 09:01:37
    Script Purpose : 
                   : 
--]]

-- Applies Empowerment of Chaos.  Lasts for 1 minute.
--     Increases Fervor of group members (AE) by 3.1
--     Cannot be modified except by direct means
-- Decreases Mitigation of target encounter vs physical damage by 216

function cast(Caster, Target, Mit)
    AddSpellBonus(Target, 200, Mit)
    Say(Caster, "Needs a subspell for the fervor buff") --Fervor data not parsed

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
