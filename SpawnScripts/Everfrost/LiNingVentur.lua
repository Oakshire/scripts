--[[
    Script Name    : SpawnScripts/Everfrost/LiNingVentur.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.04 09:09:39
    Script Purpose : 
                   : 
--]]

local TheStoriesofEverfrost = 167
local A_Pioneer_Without_A_Wagon = 168

local 

function spawn(NPC)
     ProvidesQuest(NPC, A_Pioneer_Without_A_Wagon)

end

function hailed(NPC, Spawn)
     FaceTarget(NPC, Spawn)

     if HasCompletedQuest(Spawn, TheStoriesofEverfrost) == false and HasQuest(Spawn, TheStoriesofEverfrost) == false then
          Default_Chat(NPC, Spawn)
     elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and HasQuest(Spawn, A_Pioneer_Without_A_Wagon) == false and HasCompletedQuest(Spawn, A_Pioneer_Without_A_Wagon) == false then
          Quest1Chat_1(NPC, Spawn)
     elseif HasCompletedQuest(Spawn, TheStoriesofEverfrost) == true and HasQuest(Spawn, A_Pioneer_Without_A_Wagon) == false and HasCompletedQuest(Spawn, A_Pioneer_Without_A_Wagon) == false then
          Quest1Chat_1(NPC, Spawn)
     elseif HasQuest(Spawn, A_Pioneer_Without_A_Wagon) == true and GetQuestStep(Spawn, 168) == 1 then
          Quest1Chat_5(NPC, Spawn)
     end

end

function respawn(NPC)
     spawn(NPC)
end

function Default_Chat(NPC, Spawn)

    Say(NPC, "I'm done with this forsaken place. Done with it, I say!")

end

function Quest1Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Excuse me, but what's wrong?", "Quest1Chat_2")
    StartConversation(conversation, NPC, Spawn, "He's gone, oh dear, he's gone...")
end

function Quest1Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I am... sorry to hear that.", "Quest1Chat_3")
    StartConversation(conversation, NPC, Spawn, "My, my husband... We were crossing the bay and he was... he was... eaten by one of those terrible sharks. I hate this place! Everything here is terrible!")
end

function Quest1Chat_3(NPC, Spawn)
    SetStepComplete(Spawn, TheStoriesofEverfrost, 2)

    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's a terrible story. Is there anything I can do?", "Quest1Chat_4")
    AddConversationOption(conversation, "Perhaps there is some way I can profit... Err, help.", "Quest1Chat_4")
    StartConversation(conversation, NPC, Spawn, "Yes, we tried so hard to make a home here... My Samuel was so eager to cut something from this land, but I never wanted to! I told him it was a cursed place! And though it took a few years of misery to convince him, he finally agreed. And so there we are, finally ready to return to a decent life, and he's taken from me!")
end

function Quest1Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I can do that.", "Offer_Quest_APWOAW")
    AddConversationOption(conversation, "I am in no mood for charity.")
    StartConversation(conversation, NPC, Spawn, "You would? Oh... thank you! The first kindness I've found in this place. You see, when we were crossing the bay, we did so in such a panic, especially after the attack, that our possessions were scattered all over the bay. It would mean so much if you could find them.")
end

function Quest1Chat_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "No, I will keep searching though.")
    StartConversation(conversation, NPC, Spawn, "Well? Have you managed to find all of it? Or even just some?")
end

function Offer_Quest_APWOAW(NPC, Spawn)
    OfferQuest(NPC, Spawn, A_Pioneer_Without_A_Wagon)

end

