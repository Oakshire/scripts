--[[
    Script Name    : SpawnScripts/Ruins/Widgetorcdocumentbox.lua
    Script Author  : jakejp
    Script Date    : 2018.12.29 07:12:39
    Script Purpose : 
                   : 
--]]

local IdentifyingtheLonetuskAlly = 394

function spawn(NPC)
    SetRequiredQuest(NPC, IdentifyingtheLonetuskAlly, 3)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Break open the strongbox" then 
           if GetQuestStep(Caster, IdentifyingtheLonetuskAlly, 3) then
                 SetStepComplete(Caster, IdentifyingtheLonetuskAlly, 3)
                 SendMessage(Caster, "You search the strongbox and find a parchment with orcish writing. You place it in your inventory.")
                 SendPopUpMessage(Caster, "You search the strongbox and find a parchment with orcish writing. You place it in your inventory.", 255, 255, 255)
                 SummonItem(Caster, 3803, 1)

           end
    end
end