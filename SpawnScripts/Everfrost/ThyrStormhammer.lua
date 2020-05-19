--[[
    Script Name    : SpawnScripts/Everfrost/ThyrStormhammer.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2016.01.13 02:01:44
    Script Purpose : 
                   : 
--]]

local SuppliesForThePioneers = 171
local ScoutingTheJaggedPlains = 172

function spawn(NPC)
	ProvidesQuest(NPC, ScoutingTheJaggedPlains)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetLevel(Spawn) < 44 then
          if HasQuest(Spawn, SuppliesForThePioneers) == true then
               Under_Level_Quest1Chat_1(NPC, Spawn)
          else
               UnderLevel_Chat(NPC, Spawn)
          end
    else
          if HasQuest(Spawn, SuppliesForThePioneers) == true then
               Quest1Chat_1(NPC, Spawn)
          elseif HasCompletedQuest(Spawn, SuppliesForThePioneers) == true and HasQuest(Spawn, ScoutingTheJaggedPlains) == false and HasCompletedQuest(Spawn, ScoutingTheJaggedPlains) == false then
               Quest2Chat_1(NPC, Spawn)
          elseif HasQuest(Spawn, ScoutingTheJaggedPlains) == true and GetQuestStep(Spawn, 172) == 1 then
               Quest2Chat_4(NPC, Spawn)
          end
    end
end

function respawn(NPC)

end

function UnderLevel_Chat(NPC, Spawn)

    local Chat_Randomizer = math.random(1,8)

    if Chat_Randomizer == 1 then
         Say(NPC, "Well it's not easy being the best looking guy in town, but I think I pull it off well.")
    elseif  Chat_Randomizer == 2 then
         Say(NPC, "Odd things are going on.  I'd keep an eye out if I were you.")
    elseif  Chat_Randomizer == 3 then
         Say(NPC, "Darn. I chugged that barrel much slower than I chugged the last three.")
    elseif  Chat_Randomizer == 4 then
         Say(NPC, "Strength isn't just the size of your muscles... It's, well... Yeah it is.")
    elseif  Chat_Randomizer == 5 then
         Say(NPC, "Some of my friends tell me I'm weak.  I think its true.  I've only been able to lift two goblins and an orc lately.")
    elseif  Chat_Randomizer == 6 then
         Say(NPC, "I'm feeling stronger than usual today.")
    elseif  Chat_Randomizer == 7 then
         Say(NPC, "Funny, the wound didn't smell like that yesterday.")
    elseif  Chat_Randomizer == 8 then
         Say(NPC, "Funny, the wound didn't smell like that yesterday.")
    else
         Say(NPC, "Randomizer Error")
    end
end

function Under_Level_Quest1Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Take these supplies off my hands. Brahnagan sent them for you.", "Under_Level_Quest1Chat_2")
    AddConversationOption(conversation, "No, I believe I can tough it out. I've tackled worse than this.")
    StartConversation(conversation, NPC, Spawn, "You're looking a bit uncomfortable, outsider. Is there something I can do to make you more comfortable?")
end

function Under_Level_Quest1Chat_2(NPC, Spawn)
        SetStepComplete(Spawn, SuppliesForThePioneers, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, he had me clear out a number of sharks from the water around to make it safer for pioneers to pass through.", "Under_Level_Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Ahh, Brahnagan. He is always taking care of us...")
end

function Under_Level_Quest1Chat_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Tough enough for the job.")
    StartConversation(conversation, NPC, Spawn, "You must be a tough one then.")
end

function Quest1Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Take these supplies off my hands. Brahnagan sent them for you.", "Quest1Chat_2")
    AddConversationOption(conversation, "No, I believe I can tough it out. I've tackled worse than this.", "Quest2Chat_1")
    StartConversation(conversation, NPC, Spawn, "You're looking a bit uncomfortable, outsider. Is there something I can do to make you more comfortable?")
end

function Quest1Chat_2(NPC, Spawn)
        SetStepComplete(Spawn, SuppliesForThePioneers, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, he had me clear out a number of sharks from the water around to make it safer for pioneers to pass through.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Ahh, Brahnagan. He is always taking care of us...")
end

function Quest1Chat_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Tough enough for the job.", "Quest2Chat_1")
    StartConversation(conversation, NPC, Spawn, "You must be a tough one then.")
end

function Quest2Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Expedition?", "Quest2Chat_2")
    StartConversation(conversation, NPC, Spawn, "If you're so sure of your own skill, then you won't mind going on an expedition for me.")
end

function Quest2Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Unless I come back saying it's completely uninhabitable.", "Quest2Chat_3")
    StartConversation(conversation, NPC, Spawn, "We call the valley that lies ahead the Jagged Plains. Most are convinced it is uninhabitable, but I'm not so sure. If you could scout it all out for me, and bring back your report of it, I might be able to make a case to push into it.")
end

function Quest2Chat_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Very well, I'll do it.", "Offer_Scouting_The_Jagged_Plains")
    AddConversationOption(conversation, "This sounds a bit tame for my skills. I'm going to seek out other work.")
    StartConversation(conversation, NPC, Spawn, "Yes, yes, but let's hope that's not the case.")
end

function Quest2Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "No, it's a very large place.")
    StartConversation(conversation, NPC, Spawn, "Well? Have you scoured it?")
end

function Offer_Scouting_The_Jagged_Plains(NPC, Spawn)
    OfferQuest(NPC, Spawn, ScoutingTheJaggedPlains)
end