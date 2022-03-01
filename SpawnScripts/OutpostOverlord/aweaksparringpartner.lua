--[[
    Script Name    : SpawnScripts/OutpostOverlord/aweaksparringpartner.lua
    Script Author  : Rylec, Premierio015, Emagi
    Script Date    : 2021.07.19 04:07:25
    Script Purpose : 
                   : 
--]]



local TheArtOfCombat = 363


function spawn(NPC)

end
  
   

function healthchanged(NPC, Spawn, Damage)
 local npc_hp = GetHP(NPC)
    if Damage >= npc_hp then
        AddTimer(NPC, 1000, "stop_combat", 1, Spawn)
        Say(NPC, "Well Done.")
        Say(NPC, "Next!")
        if GetQuestStep(Spawn, TheArtOfCombat) == 2 then
        SetStepComplete(Spawn, TheArtOfCombat, 2)
        end
        SetHP(NPC, GetMaxHP(NPC))
        return -1 -- DIPLOMATIC immunity!!
    end
    return 0 -- use default Damage passed in
end

function stop_combat(NPC, Spawn)
if IsInCombat(NPC) then
ClearHate(NPC, Spawn)
SetInCombat(NPC, false)
SetInCombat(Spawn, false)
ClearEncounter(NPC)
end
    end

function death(NPC, Spawn)
if GetQuestStep(Spawn, TheArtOfCombat) == 2 then
SetStepComplete(Spawn, TheArtOfCombat, 2)
end
   end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1002.mp3", "You can attack me whenever you're ready. You can do that by double-clicking me, by right clicking me and selecting 'attack,' by using an offensive ability while you have me targeted, or by turning on auto attack by pressing the ~ key while you have me targeted.", "", 0, 0, Spawn)
end


function respawn(NPC)
spawn(NPC)
end
