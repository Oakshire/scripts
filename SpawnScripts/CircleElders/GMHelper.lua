--[[
    Script Name    : SpawnScripts/CircleElders/GMHelper.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.24 01:10:44
    Script Purpose : 
                   : 
--]]

local DisruptionForDistraction = 366
local TheFinalAssault = 367

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    if IsFollowing(NPC) then
        AddConversationOption(Conversation, "Stop following me.", "StopFollowOption")
    elseif not IsFollowing(NPC) then
        AddConversationOption(Conversation, "Follow me.", "FollowOption")
    end
    AddConversationOption(Conversation, "Quests", "QuestOptions")
    AddConversationOption(Conversation, "Zones", "ZoneOptions")
    AddConversationOption(Conversation, "Back to the vo1d with you.", "BackToVoidOption")
    AddConversationOption(Conversation, "Shaddap!", "ShaddapOption")
    StartConversation(Conversation, NPC, Spawn, "Hi there, how can i help you?")
end

function FollowOption(NPC, Spawn)
    SetFollowTarget(NPC, Spawn)
    ToggleFollow(NPC)
end

function StopFollowOption(NPC, Spawn)
    ToggleFollow(NPC)
end

function QuestOptions(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    if HasQuest(Spawn, TheFinalAssault) then
        AddConversationOption(Conversation, "The Final Assault", "TheFinalAssaultOptions")
    elseif HasQuest(Spawn, DisruptionForDistraction) then
        AddConversationOption(Conversation, "Disruption for Distraction", "DisruptionForDistractionOptions")
    else
        AddConversationOption(Conversation, "No quests available.")
    end
    StartConversation(Conversation, NPC, Spawn, "Select a quest: ")
end

function TheFinalAssaultOptions(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "What step am i on?", "TheFinalAssaultQuestStep")
    StartConversation(Conversation, NPC, Spawn, "Select an option for this quest: ")
end

function TheFinalAssaultQuestStep(NPC, Spawn)
    Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, TheFinalAssault))
end

function DisruptionForDistractionOptions(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "What step am i on?", "DisruptionForDistractionQuestStep")
    StartConversation(Conversation, NPC, Spawn, "Select an option for this quest: ")
end

function DisruptionForDistractionQuestStep(NPC, Spawn)
    Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, DisruptionForDistraction))
end

function BackToVoidOption(NPC, Spawn)
    ApplySpellVisual(NPC, 2142)
    AddTimer(NPC, 4000, "delayed_despawn", 1)
    SendPopUpMessage(Spawn, "You briefly hear a tearing sound as the voidbeast leaves this dimension.", 255, 255, 255)
end

function ShaddapOption(NPC, Spawn)
    Despawn(NPC)
    Say(Spawn, "Uh oh!")
    SpawnMob(GetZone(Spawn), 2460001, false, GetX(Spawn), GetY(Spawn), GetZ(Spawn), GetHeading(Spawn)+180)
end

function delayed_despawn(NPC, Spawn)
    Despawn(NPC)
end

function ZoneOptions(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Send me to my bind point.", "BindPointOption")
    AddConversationOption(Conversation, "Shattered Lands", "ShatteredLandsOption")
    StartConversation(Conversation, NPC, Spawn, "Select an option or zone by expansion: ")
end

function BindPointOption(NPC, Spawn)
    Despawn(NPC)
    Gate(Spawn)
end

function ShatteredLandsOption(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "The Far Journey: Qeynos", "TheFarJourneyQeynos")
    AddConversationOption(Conversation, "The Far Journey: Freeport", "TheFarJourneyFreeport")
    StartConversation(Conversation, NPC, Spawn, "Select a zone: ")
end



-- ZONES
function TheFarJourneyQeynos(NPC, Spawn)
    Despawn(NPC)
    Zone(GetZone(26), Spawn)
end
function TheFarJourneyFreeport(NPC, Spawn)
    Despawn(NPC)
    Zone(GetZone(27), Spawn)
end
