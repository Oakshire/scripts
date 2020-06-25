--[[
    Script Name    : SpawnScripts/ThunderingSteppes/GrennStiles.lua
    Script Author  : Zcoretri
    Script Date    : 2014.07.14 07:07:35
    Script Purpose : Grenn Stiles spawn script
                   : 
--]]

local RecycleTheOldFashionedWay = 111

function spawn(NPC)
        ProvidesQuest(NPC, RecycleTheOldFashionedWay)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if HasQuest(Spawn, RecyclingTheOldFashoinedWay) then
        -- Has the quest
        if GetQuestStep(Spawn, RecyclingTheOldFashoinedWay) == 1 then
            -- Has not completed the quest yet
            AddConversationOption(conversation, "Ah! Got the bones, eh? Let me see them.")
            StartConversation(conversation, NPC, Spawn, "Er, no, not quite. Just stopped by to say hello. I'll be back")
        end
    else
        AddConversationOption(conversation, "What kind of opportunity?", "Option1")
        AddConversationOption(conversation, "No, I look like someone who's heading the other way.")
    	StartConversation(conversation, NPC, Spawn, "Hey! Don't miss out on this once-in-a-lifetime opportunity!")
    end
end

function Option1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "If the price is right", "Option2")
    AddConversationOption(conversation, "No, I'm not")
    StartConversation(conversation, NPC, Spawn, "Why, in farming of course. Lots of opportunity to grow in the farming industry--HA! Get it? Grow ... farming ... Oh, Never mind ... On any note, I've made a bundle selling fertilizer to the farmers in the Steppes. I'm looking for a business partner - no investment required. Yuo'd be silly to pass up this opportunity!")
end

function Option2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, RecycleTheOldFashionedWay)
end

