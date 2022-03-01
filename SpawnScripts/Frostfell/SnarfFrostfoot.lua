--[[
	Script Name      :    SpawnScripts/Frostfell/SnarfFrostfoot.lua
	Script Purpose   :    Snarf Frostfoot
	Script Author    :    vo1d
	Script Date      :    2019.10.29
	Script Notes     :    
--]]

local ADeepiceMystery = 486

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 60, "InRange", "OutRange")	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    if HasCompletedQuest(Spawn, ADeepiceMystery) then
    elseif HasQuest(Spawn, ADeepiceMystery) then
        if GetQuestStep(Spawn, ADeepiceMystery) == 13 then
            DeepiceMysteryChat1(NPC, Spawn)
        elseif GetQuestStep(Spawn, ADeepiceMystery) == 14 then
            DeepiceMysteryChat1(NPC, Spawn)
		end
    else
        Greetings(NPC, Spawn)
    end
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, ADeepiceMystery) and GetQuestStep(Caster, ADeepiceMystery) == 12 and SpellName == "pour acid on" then
        SpawnSet(Target, "model_type", "7039")
        SetStepComplete(Caster, ADeepiceMystery, 12)
	end
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 12 then
        SpawnSet(NPC, "model_type", "11823")
    else
        SpawnSet(NPC, "model_type", "7039")
    end
 end

function OutRange(NPC, Spawn)
end

function Greetings(NPC, Spawn)
end

function DeepiceMysteryChat1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "What put you in that ice, Snarf?", "DeepiceMysteryChat2")
    StartConversation(Conversation, NPC, Spawn, "Finally, Snarf is not frozened!")
end

function DeepiceMysteryChat2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Oh? Who did this to you?", "DeepiceMysteryChat3")
    StartConversation(Conversation, NPC, Spawn, "Me no know what. Me know who!")
end

function DeepiceMysteryChat3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "But you didn't see her, did you?", "DeepiceMysteryChat4")
    StartConversation(Conversation, NPC, Spawn, "Lady Vox! She mad we Frostfoots trying to be free!")
end

function DeepiceMysteryChat4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Lady Vox isn't tiny.", "DeepiceMysteryChat5")
    StartConversation(Conversation, NPC, Spawn, "Yes! Tiny icy dragon.")
end

function DeepiceMysteryChat5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    if GetQuestStep(Spawn, ADeepiceMystery) == 13 then
        SetStepComplete(Spawn, ADeepiceMystery, 13)
    end
    
    AddConversationOption(Conversation, "Thank you.", "DeepiceMysteryChat6")
    StartConversation(Conversation, NPC, Spawn, "Oh. Me no know then.")
end
