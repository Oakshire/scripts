--[[
    Script Name    : SpawnScripts/ThunderingSteppes/GrennStiles.lua
    Script Author  : Patrick_Boyd
    Script Date    : 2020.09.07
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
    if HasQuest(Spawn, RecycleTheOldFashionedWay) then
        -- Has the quest
        if GetQuestStep(Spawn, RecycleTheOldFashionedWay) == 1 then
            -- Has not completed the quest yet
            AddConversationOption(conversation, "Er, no, not quite. Just stopped by to say hello. I'll be back") 
            StartConversation(conversation, NPC, Spawn,  "Ah! Got the bones, eh? Let me see them.")
	else 
	    -- Has completed the quest
	    AddConversationOption(conversation, "Er, no, not quite. Just stopped by to say hello. I'll be back")
	    -- This is placeholder text, not in the dump. TODO replace with actual text...
	    AddConversationOption(conversation, "Yes, right here!", "EndRecycling")
	    StartConversation(conversation, NPC, Spawn,  "Ah! Got the bones, eh? Let me see them.")
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

function EndRecycling(NPC, Spawn)
    SetStepComplete(Spawn, RecycleTheOldFashionedWay, 2)
end

