--[[
    Script Name    : SpawnScripts/Ruins/orccask.lua
    Script Author  : jakejp
    Script Date    : 2018.12.28 06:12:19
    Script Purpose : 
                   : 
--]]

local Seventh_KnockTheFightOutOfEm = 392

function spawn(NPC)
    SetRequiredQuest(NPC, Seventh_KnockTheFightOutOfEm, 4)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Poke a hole in the orc wine cask" then 
           if GetQuestStep(Caster, Seventh_KnockTheFightOutOfEm, 4) then
                 SetStepComplete(Caster, Seventh_KnockTheFightOutOfEm, 4) 
                 SendMessage(Caster, "You have poked a hole in the cask and watched the wine drain out.")
           end 
    end
end