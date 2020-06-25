--[[
    Script Name    : SpawnScripts/Ruins/orccauldron.lua
    Script Author  : jakejp
    Script Date    : 2018.12.28 05:12:29
    Script Purpose : 
                   : 
--]]

local Seventh_KnockTheFightOutOfEm = 392

function spawn(NPC)
    SetRequiredQuest(NPC, Seventh_KnockTheFightOutOfEm, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Throw dirt in the orc stew" then 
           if GetQuestStep(Caster, Seventh_KnockTheFightOutOfEm, 1) then
                 SetStepComplete(Caster, Seventh_KnockTheFightOutOfEm, 1)
                 SendMessage(Caster, "You throw some dirt in the orc cooking pot.")
           end
    end
end