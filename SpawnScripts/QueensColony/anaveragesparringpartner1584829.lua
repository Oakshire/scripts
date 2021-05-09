--[[
    Script Name    : SpawnScripts/QueensColony/anaveragesparringpartner1584829.lua
    Script Author  : Rylec, premierio015
    Script Date    : 2020.11.15 08:11:43
    Script Purpose : 
                   : 
--]]

local ArtOfCombatQuest = 132

function spawn(NPC)
end
   
function healthchanged(NPC, Spawn) -- checks for Sparring Partner HP and Gives Max Amount back when value is low
    if GetHP(NPC) <= 3 then
        if GetQuestStep(Spawn, ArtOfCombatQuest) == 2 then
            SetStepComplete(Spawn, ArtOfCombatQuest)
        end    
        Say(NPC, "Well Done.")
        Say(NPC, "Okay, who's next?")
        SetHP(NPC, GetMaxHP(NPC))  
        SetInCombat(NPC, false)
        ClearHate(NPC, Spawn)
        ClearEncounter(NPC)
    end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local voice = math.random (1,3)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1002.mp3", "You can attack me whenever you're ready. You can do that by double-clicking me, by right clicking me and selecting 'attack,' by using an offensive ability while you have me targeted, or by turning on auto attack by pressing the ~ key while you have me targeted.", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end