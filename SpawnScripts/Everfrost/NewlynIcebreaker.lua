--[[
    Script Name    : SpawnScripts/Everfrost/NewlynIcebreaker.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.10.23 01:10:49
    Script Purpose : 
                   : 
--]]

local TheStoriesofEverfrost = 167

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, TheStoriesofEverfrost) == false then
         Default_Chat(NPC, Spawn)
    elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and GetQuestStep(Spawn, 167) == 2 then
         Default_Chat(NPC, Spawn)
    elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and GetQuestStep(Spawn, 167) == 3 then
         Default_Chat(NPC, Spawn)
    elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and GetQuestStep(Spawn, 167) == 1 then
         TSOE_Chat1(NPC, Spawn)
    end
         
end

function respawn(NPC)

end

function Default_Chat(NPC, Spawn)

    Say(NPC, "Your armor's looking a bit dinged up. Want me to take a look at it?")

end

function TSOE_Chat1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Maybe later. At the moment, I have actually just come to hear your story. What brought you to Everfrost?", "TSOE_Chat2")
    StartConversation(conversation, NPC, Spawn, "Hello there. You need that armor of yours fixed up?")
end

function TSOE_Chat2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see. So is it very different?", "TSOE_Chat3")
    StartConversation(conversation, NPC, Spawn, "Why, any good son or daughter of Halas would. This may not be exactly as our people remember it, but it's still our homeland, changed or not.")
end

function TSOE_Chat3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "But there are some tokens left?", "TSOE_Chat4")
    StartConversation(conversation, NPC, Spawn, "How should I know? My people don't live so long as the elves, or even the humans for that matter... I can say that from the stories, though, it is different. The Rending tore her up good and sure.")
end

function TSOE_Chat4(NPC, Spawn)
    SetStepComplete(Spawn, TheStoriesofEverfrost, 1)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see, I see.")
    StartConversation(conversation, NPC, Spawn, "Aye, there are still the beautiful peaks, and the feel of the land is still there. It is cold and bitter, but beautiful and enduring, much like us.")
end        
