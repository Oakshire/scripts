--[[
    Script Name    : SpawnScripts/antonica/aWindstalkercitizen.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 08:08:59
    Script Purpose : 
                   : 
--]]

local LichaDancingQueen = 5342

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 17
    local difficulty1 = 6
    local hp1 = 975
    local power1 = 310
    local difficulty2 = 6
    local hp2 = 1105
    local power2 = 360
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
SetTempVariable(NPC, "QUEST_HAILED", "false")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, LichaDancingQueen) and GetTempVariable(NPC, "QUEST_HAILED") == "false" then
	local conversation = CreateConversation()    
	AddConversationOption(conversation, "Licha is going to dance!", "Option3")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "What?")
	elseif GetTempVariable(NPC, "QUEST_HAILED") == "true" or HasCompletedQuest(Spawn, LichaDancingQueen) then
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	PlayFlavor(NPC, "", "I heard you the first time.", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "I know, I know. You already told me.", "", 0, 0, Spawn)
	end
end
   end

function Option3(NPC, Spawn) -- we don't use easy ways to sort.
    SetTempVariable(NPC, "QUEST_HAILED", "true")
    if QuestStepIsComplete(Spawn, LichaDancingQueen, 1) and QuestStepIsComplete(Spawn, LichaDancingQueen, 2) then
    SetStepComplete(Spawn, LichaDancingQueen, 3)
    elseif QuestStepIsComplete(Spawn, LichaDancingQueen, 2) and QuestStepIsComplete(Spawn, LichaDancingQueen, 3) then
    SetStepComplete(Spawn, LichaDancingQueen, 1)
    elseif QuestStepIsComplete(Spawn, LichaDancingQueen, 3) and QuestStepIsComplete(Spawn, LichaDancingQueen, 1) then
    SetStepComplete(Spawn, LichaDancingQueen, 2)
    elseif not QuestStepIsComplete(Spawn, LichaDancingQueen, 1) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 2) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 3) then
    SetStepComplete(Spawn, LichaDancingQueen, 1)
    elseif QuestStepIsComplete(Spawn, LichaDancingQueen, 1) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 2) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 3) then
    local random_step = MakeRandomInt(1, 2)
    if random_step == 1 then
    SetStepComplete(Spawn, LichaDancingQueen, 2)
    elseif random_step == 2 then
    SetStepComplete(Spawn, LichaDancingQueen, 3)
    end
    elseif QuestStepIsComplete(Spawn, LichaDancingQueen, 2) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 1) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 3) then
    local random_step = MakeRandomInt(1, 2)
    if random_step == 1 then
    SetStepComplete(Spawn, LichaDancingQueen, 1)
    elseif random_step == 2 then
    SetStepComplete(Spawn, LichaDancingQueen, 3)
    end
elseif QuestStepIsComplete(Spawn, LichaDancingQueen, 3) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 1) and not QuestStepIsComplete(Spawn, LichaDancingQueen, 2) then
    local random_step = MakeRandomInt(1, 2)
    if random_step == 1 then
    SetStepComplete(Spawn, LichaDancingQueen, 2)
    elseif random_step == 2 then
    SetStepComplete(Spawn, LichaDancingQueen, 1)
    end
       end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Well, she thinks you should go watch.")
	StartConversation(conversation, NPC, Spawn, "Not again...")
	AddTimer(NPC, 600000, "reset")
end


function reset(NPC, Spawn)
if GetTempVariable(NPC, "QUEST_HAILED") == "true" then
SetTempVariable(NPC, "QUEST_HAILED", "false")
end
   end





function respawn(NPC)
	spawn(NPC)
end