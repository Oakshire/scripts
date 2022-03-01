--[[
    Script Name    : SpawnScripts/Ruins/orcknightstatue.lua
    Script Author  : jakejp
    Script Date    : 2018.12.28 06:12:07
    Script Purpose : 
                   : 
--]]

local Seventh_KnockTheFightOutOfEm = 392

function spawn(NPC)
    SetRequiredQuest(NPC, Seventh_KnockTheFightOutOfEm, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Deface the orc statue" then 
           if GetQuestStep(Caster, Seventh_KnockTheFightOutOfEm, 2) then
                 SetStepComplete(Caster, Seventh_KnockTheFightOutOfEm, 2) 
                 SendMessage(Caster, "You draw a mustache on the face of the orc statue.")
           end 
    end
end