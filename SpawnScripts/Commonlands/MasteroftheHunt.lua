--[[
    Script Name    : SpawnScripts/Commonlands/MasteroftheHunt.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.10 06:11:15
    Script Purpose : Provides "Dirty Sneaky Rats!"(428) quest
                   : 
--]]

local DirtySneakyRats = 428

function spawn(NPC)
ProvidesQuest(NPC, DirtySneakyRats)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, DirtySneakyRats) and not HasCompletedQuest(Spawn, DirtySneakyRats) then
    PlayFlavor(NPC, "voiceover/english/optional2/master_of_the_hunt/commonlands/quests/master_hunter/master_hunter.mp3", "", "", 2932372965, 3983598891, Spawn)
    AddConversationOption(conversation, "I wasn't sent by anyone.", "dlg1")
    AddConversationOption(conversation, "No, I was just passing through.")
    StartConversation(conversation, NPC, Spawn, "What is it?  Did Iziran send you to check up on me?")
    elseif HasQuest(Spawn, DirtySneakyRats) and not GetQuestStep(Spawn, DirtySneakyRats, 2) then
    PlayFlavor(NPC, "voiceover/english/optional2/master_of_the_hunt/commonlands/quests/master_hunter/master_hunter002.mp3", "", "", 3406942964, 85702594, Spawn)
    AddConversationOption(conversation, "All right, okay.")
    StartConversation(conversation, NPC, Spawn, "If this task was too difficult, you should not have agreed to help me. I don't want to see your face until you have my journal.") 
    elseif GetQuestStep(Spawn, DirtySneakyRats) == 2 then
    SetStepComplete(Spawn,DirtySneakyRats,2)
    PlayFlavor(NPC, "voiceover/english/optional2/master_of_the_hunt/commonlands/quests/master_hunter/master_hunter003.mp3", "", "",  127957399, 301564099, Spawn)
    AddConversationOption(conversation, "When will that be?", "dlg2")
    StartConversation(conversation, NPC, Spawn, "You have my journal, yes?  Ahh, I am in your debt.  When you are ready, I will show you what it means to be the Master of the Hunt!")
    elseif HasCompletedQuest(Spawn, DirtySneakyRats) then
    PlayFlavor(NPC, "voiceover/english/master_of_the_hunt/commonlands/quest/016_quest_hunter_druid_aoi_callout_4b78dcf3.mp3", "Stay clear of that lot down there.", "", 1493660051, 776533557, Spawn) 

end
   end


function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/optional2/master_of_the_hunt/commonlands/quests/master_hunter/master_hunter000.mp3", "", "", 3752586911, 3752586911, Spawn)
AddConversationOption(conversation, "For the right price, always." , "offer")
AddConversationOption(conversation, "Not right now.")
StartConversation(conversation, NPC, Spawn, "That's the first lot of good news I've heard all day.  These undead orcs have no strategy, no rhyme or reason to their actions; they just continue to relentlessly, albeit feebly, attack our city. Huh?  Say, since Iziran didn't send you, are your skills for hire?")
end


function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/optional2/master_of_the_hunt/commonlands/quests/master_hunter/master_hunter004.mp3", "", "", 2085181382, 2198930821, Spawn)
AddConversationOption(conversation, "Ok then.")
StartConversation(conversation, NPC, Spawn, "Why, when you're ready of course.")
end



function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, DirtySneakyRats)
end




function InRange(NPC, Spawn)
if not HasQuest(Spawn, DirtySneakyRats) and not HasCompletedQuest(Spawn, DirtySneakyRats) then
PlayFlavor(NPC, "voiceover/english/master_of_the_hunt/commonlands/quest/016_quest_hunter_druid_aoi_callout_4b78dcf3.mp3", "Stay clear of that lot down there.", "", 1493660051, 776533557, Spawn) 
end
   end





function respawn(NPC)

end

