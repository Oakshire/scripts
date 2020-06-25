--[[
    Script Name    : SpawnScripts/Ruins/orcidol.lua
    Script Author  : jakejp
    Script Date    : 2018.12.28 06:12:40
    Script Purpose : 
                   : 
--]]

local Seventh_KnockTheFightOutOfEm = 392

function spawn(NPC)
    SetRequiredQuest(NPC, Seventh_KnockTheFightOutOfEm, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Deface the orc idol" then 
           if GetQuestStep(Caster, Seventh_KnockTheFightOutOfEm, 3) then
                 SetStepComplete(Caster, Seventh_KnockTheFightOutOfEm, 3) 
                 SendMessage(Caster, "You draw crazy eyes and a beard on the orc idol.")
           end 
    end
end
