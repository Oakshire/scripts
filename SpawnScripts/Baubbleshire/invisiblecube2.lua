--[[
    Script Name    : SpawnScripts/Baubbleshire/invisiblecube2.lua
    Script Author  : Dorbin
    Script Date    : 2023.03.16 07:03:26
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
 if GetFactionAmount(Spawn,11)>=10000 then
     --QUEST CHECK, CHECKS EACH RACE SUBURB
    if not HasQuest(Spawn,5760) and not HasCompletedQuest(Spawn, 5760) and
    not HasQuest(Spawn,5761) and not HasCompletedQuest(Spawn, 5761) and
    not HasQuest(Spawn,5762) and not HasCompletedQuest(Spawn, 5762) and
    not HasQuest(Spawn,5763) and not HasCompletedQuest(Spawn, 5763) and
    not HasQuest(Spawn,5764) and not HasCompletedQuest(Spawn, 5764) and
    not HasQuest(Spawn,5765) and not HasCompletedQuest(Spawn, 5765) and
    --QUEST CHECK FOR ISLE OF REFUGE QUEST AND OFFERED QUEST
    not HasQuest(Spawn, 5717) and not HasQuest(Spawn, 5792) then   
    OfferQuest(NPC,Spawn,5792)
    conversation = CreateConversation()
    PlayFlavor(Spawn, "voiceover/english/queen_antonia_bayle/qey_north/antonia_isle_speech_10.mp3", "", "", 1463066361, 618547599, Spawn)
    AddConversationOption(conversation, " ")
    StartDialogConversation(conversation, 1, NPC, Spawn, "The voice of Queen Antonia Bayle enters your mind as you step forward... \n\n\"All who yearn to fully participate in the center of Qeynos must first prove themselves.\"")
    end
end
end

function respawn(NPC)
	spawn(NPC)
end