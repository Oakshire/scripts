--[[
    Script Name    : SpawnScripts/OutpostOverlord/anaveragesparringpartner.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.19 04:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end
function spawn(NPC)

end
  
   

function healthchanged(NPC, Spawn)
 local npc_hp = GetHP(NPC)
if npc_hp <= 5 then
AddTimer(NPC, 1000, "stop_combat", 1, Spawn)
Say(NPC, "Well Done.")
Say(NPC, "Okay. Who's next?")
if GetQuestStep(Spawn, TheArtOfCombat) == 2 then
SetStepComplete(Spawn, TheArtOfCombat, 2)
end
SetHP(NPC, GetMaxHP(NPC))  
end
    end

function stop_combat(NPC, Spawn)
if IsInCombat(NPC) then
ClearHate(NPC, Spawn)
SetInCombat(NPC, false)
SetInCombat(Spawn, false)
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
