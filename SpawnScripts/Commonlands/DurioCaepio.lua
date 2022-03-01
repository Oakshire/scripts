--[[
    Script Name    : SpawnScripts/Commonlands/DurioCaepio.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.20 06:02:13
    Script Purpose : 
                   : 
--]]
local PlainOleDisease = 454


function spawn(NPC)
EmoteLoop(NPC)
end


function EmoteLoop (NPC)
                PlayAnimation(NPC, 12191)
                AddTimer(NPC, 15000, "EmoteLoop")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "hail", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "hail", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "hail", 0, 0, Spawn)
    end
    if GetQuestStep(Spawn, PlainOleDisease) ~= 5 then
    PlayFlavor(NPC, "", "Nice to have a healer here.", "", 0, 0, Spawn)
    elseif HasQuest(Spawn, PlainOleDisease) and GetQuestStep(Spawn, PlainOleDisease) == 5 then
     PlayAnimation(NPC, 11256)
     conversation = CreateConversation()
     AddConversationOption(conversation, "Uh, yeah.  I have some medicine for you from the healer.", "dlg1")
     StartConversation(conversation, NPC, Spawn, "Boils 'n pus... his visage burned on my eyes.")
     end
end


function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "I'll let him know.", "dlg2")
StartConversation(conversation, NPC, Spawn, "Medicines?  Yes.  Those are good.  They get me sleep... dreamless.")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, PlainOleDisease, 5)
conversation = CreateConversation()
AddConversationOption(conversation, "Uh, no.  I meant the healer.")
StartConversation(conversation, NPC, Spawn, "You've seen the man of disease, too?!")
end

function respawn(NPC)
spawn(NPC)
end

