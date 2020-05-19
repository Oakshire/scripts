--[[
    Script Name    : SpawnScripts/Everfrost/BrahnaganMacLahnan.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.10.14 11:10:51
    Script Purpose : 
                   : 
--]]

local TheStoriesofEverfrost = 167
local CullTheThreatToThePioneers = 169
local FurtherCulling = 170
local SuppliesForThePioneers = 171



function spawn(NPC)
	ProvidesQuest(NPC, TheStoriesofEverfrost)
	ProvidesQuest(NPC, CullTheThreatToThePioneers)
	ProvidesQuest(NPC, FurtherCulling)
	ProvidesQuest(NPC, SuppliesForThePioneers)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetLevel(Spawn) < 41 then
          UnderLevel_Chat(NPC, Spawn)
    else
          if HasCompletedQuest(Spawn, TheStoriesofEverfrost) == false and HasQuest(Spawn, TheStoriesofEverfrost) == false then
               Quest1Chat_1(NPC, Spawn)
          elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and GetQuestStep(Spawn, 167) == 1 then
               Quest1Chat_5(NPC, Spawn)
          elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and GetQuestStep(Spawn, 167) == 2 then
               Quest1Chat_5(NPC, Spawn)
          elseif HasQuest(Spawn, TheStoriesofEverfrost) == true and GetQuestStep(Spawn, 167) == 3 then
               Quest1Chat_6(NPC, Spawn)
          elseif HasCompletedQuest(Spawn, TheStoriesofEverfrost) == true and HasCompletedQuest(Spawn, CullTheThreatToThePioneers) == false and HasQuest(Spawn, CullTheThreatToThePioneers) == false then
               Quest2Chat_1(NPC, Spawn)
          elseif HasQuest(Spawn, CullTheThreatToThePioneers) == true and GetQuestStep(Spawn, 169) == 1 then
               Quest2Chat_3(NPC, Spawn)
          elseif HasQuest(Spawn, CullTheThreatToThePioneers) == true and GetQuestStep(Spawn, 169) == 2 then
               Quest2Chat_4(NPC, Spawn)
          elseif HasCompletedQuest(Spawn, CullTheThreatToThePioneers) == true and HasCompletedQuest(Spawn, FurtherCulling) == false and HasQuest(Spawn, FurtherCulling) == false then
               Quest3Chat_1(NPC, Spawn)
          elseif HasQuest(Spawn, FurtherCulling) == true and GetQuestStep(Spawn, 170) == 1 then
               Quest3Chat_2(NPC, Spawn)
          elseif HasQuest(Spawn, FurtherCulling) == true and GetQuestStep(Spawn, 170) == 2 then
               Quest3Chat_3(NPC, Spawn)
          elseif HasCompletedQuest(Spawn, FurtherCulling) == true and HasCompletedQuest(Spawn, SuppliesForThePioneers) == false and HasQuest(Spawn, SuppliesForThePioneers) == false then
               Quest4Chat_1(NPC, Spawn)
          elseif HasQuest(Spawn, SuppliesForThePioneers) then
               Quest4Chat_2(NPC, Spawn)
          end
    end
end

function respawn(NPC)
         spawn(NPC)
end

function UnderLevel_Chat(NPC, Spawn)

    Say(NPC, "Welcome to Everfrost. You'll find her a beautiful, if cold, region.")

end

function Quest1Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Oh? This is your homeland?", "Quest1Chat_2")
    StartConversation(conversation, NPC, Spawn, "Why, hello there! You look as though you've come an awful long way to visit our frosty homeland.")
end

function Quest1Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see. And so you are here trying to do ... what?", "Quest1Chat_3")
    StartConversation(conversation, NPC, Spawn, "Oh, yes! Long ago, before the Rending, the Everfrost Peaks were home to the great Northern tribes. Like many other things, they were changed completely when it happened.")
end

function Quest1Chat_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see.", "Quest1Chat_4")
    StartConversation(conversation, NPC, Spawn, "Depends. Some hope to one day found settlements here, while others are simply after the thick furs of its snow-born beasts.")
end

function Quest1Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I'd be happy to.", "Offer_The_Stories_of_Everfrost")
    AddConversationOption(conversation, "No time for talk.")
    StartConversation(conversation, NPC, Spawn, "Why don't you speak with some of the others? They can offer you different perspectives than I can. Go speak with them, come back to me, and we will talk more.")
end

function Quest1Chat_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "No, still searching for perspective.")
    StartConversation(conversation, NPC, Spawn, "Well? Have you spoken with a few others?")
end

function Quest1Chat_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Yes, I think I have some perspective now. Li Ning Ventur seems to have had a tough time. The sharks of the Bay, well, ate her husband.", "SetCompleteQuest_1")
    StartConversation(conversation, NPC, Spawn, "Well? Have you spoken with a few others?")
end

function SetCompleteQuest_1(NPC, Spawn)
    SetStepComplete(Spawn, TheStoriesofEverfrost, 3)
    Quest2Chat_1(NPC, Spawn)
end

function Quest2Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Yeah, it seems a bit risky for pioneers to cross.", "Quest2Chat_2")
    StartConversation(conversation, NPC, Spawn, "Now that is not a good thing to hear. I will confess that the moment the Venturs arrived, I assumed they would be leaving soon enough -- not quite the heartiest individuals I've ever seen, but good people and I hate to hear what happened")
end

function Quest2Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I can do that.", "Offer_Cull_the_Threat_to_the_Pioneers")
    AddConversationOption(conversation, "Sharks? No thanks.")
    StartConversation(conversation, NPC, Spawn, "So it does... You, though, you look as though you might be a little more difficult to kill. Maybe you would like to prove your mettle by removing a few of the primal frostfins from the waters?")
end

function Quest2Chat_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "No, not nearly few enough.")
    StartConversation(conversation, NPC, Spawn, "Well? Are there fewer frostfins than there were before?")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, I killed quite a few of them.", "Quest2Chat_5")
	StartConversation(conversation, NPC, Spawn, "Well? Are there fewer frostfins than there were before?")
end

function Quest2Chat_5(NPC, Spawn)
        SetStepComplete(Spawn, CullTheThreatToThePioneers, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "...")
	StartConversation(conversation, NPC, Spawn, "I see far fewer fins in the ocean, very good!")
end

function Quest3Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Yeah, I think I can handle them.", "Offer_Further_Culling")
    AddConversationOption(conversation, "Ah, no, that sounds a bit too rough for me.")
    StartConversation(conversation, NPC, Spawn, "Well, you seemed to handle them easily enough. Perhaps you'd like to take on the more formidable ancient frostfins, hmm?")
end


function Quest3Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Yes, I haven't quite finished the job yet.")
    StartConversation(conversation, NPC, Spawn, "Well, your fingers seem intact. Are the sharks so fortunate?")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, their blood mixes with the salt water now.", "Quest3Chat_4")
	StartConversation(conversation, NPC, Spawn, "Well, your fingers seem intact. Are the sharks so fortunate?")
end

function Quest3Chat_4(NPC, Spawn)
        SetStepComplete(Spawn, FurtherCulling, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're Welcome.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "Ahh, that's good to hear! The trip to land won't be quite so perilous now. Thank you, Player Name")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that. It's on my way.", "Offer_Supplies_for_the_Pioneers")
        AddConversationOption(conversation, "No, I don't want to be burdened.")
	StartConversation(conversation, NPC, Spawn, "If you're going to be traveling on into Everfrost, would you be willing to deliver some supplies to one of our pioneer camps? There are some very important items that need to be delivered, and you'd have their gratitude -- and mine.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        Say(NPC, "Those pioneers need what I've given you. Hurry on.")
end


function Offer_The_Stories_of_Everfrost(NPC, Spawn)
    OfferQuest(NPC, Spawn, TheStoriesofEverfrost)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I will.")
    StartConversation(conversation, NPC, Spawn, "Very good. Come back to me when you've gotten a good earful.")

end

function Offer_Cull_the_Threat_to_the_Pioneers(NPC, Spawn)
    OfferQuest(NPC, Spawn, CullTheThreatToThePioneers)
end

function Offer_Further_Culling(NPC, Spawn)
    OfferQuest(NPC, Spawn, FurtherCulling)
end

function Offer_Supplies_for_the_Pioneers(NPC, Spawn)
    OfferQuest(NPC, Spawn, SuppliesForThePioneers)
end