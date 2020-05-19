--[[
	Script Name	: CaptainTyreth.lua
	Script Purpose	: Captain Tyreth
	Script Author	: vo1d
	Script Date	: 10/12/2019
        Script Notes    : WIP, Tyreth isn't functioning yet.
--]]

local EvilGoblinTent1 = 2780125
local EvilGoblinTent2 = 2780124
local EvilGoblinTent3 = 2780123

-- Quest ID's
local TheFinalAssault = 367

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function SpawnAccess(NPC, Spawn)
    if HasCompletedQuest(Spawn, TheFinalAssault) or GetQuestStep(Spawn, TheFinalAssault) == 2 then
        AddSpawnAccess(GetSpawn(NPC, EvilGoblinTent1), Spawn)
        AddSpawnAccess(GetSpawn(NPC, EvilGoblinTent2), Spawn)
        AddSpawnAccess(GetSpawn(NPC, EvilGoblinTent3), Spawn)
	else
	    AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 1 then
        FaceTarget(NPC, Spawn)
        Conversation = CreateConversation()
        
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth001.mp3", "", "", 3280197482, 1135652426, Spawn)
        AddConversationOption(Conversation, "That's me.", "dlg_2")
        AddConversationOption(Conversation, "I need to be leaving.")
            StartConversation(Conversation, NPC, Spawn, "Hahaha! The attack has begun and the enemy shall fall! You must be " .. GetName(Spawn) .. ", here to take part in the festivities.")
    elseif HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 2 then
        FaceTarget(NPC, Spawn)
        Conversation = CreateConversation()

        AddConversationOption(Conversation, "I lost my torch!", "LostTorch")
        AddConversationOption(Conversation, "Goodbye.")
            StartConversation(Conversation, NPC, Spawn, "Burn any of their tents nearby. The island must be taken, and the time is now. There are tents here in the Valley of Discipline, and some east near Fisher Falls.")
    elseif HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 3 then
        SetStepComplete(Spawn, TheFinalAssault, 3)
    elseif HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 5 then
        SetStepComplete(Spawn, TheFinalAssault, 5)
    end
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth002.mp3", "", "", 3182304037, 930301833, Spawn)
    AddConversationOption(Conversation, "What must I do?", "dlg_3")
        StartConversation(Conversation, NPC, Spawn, "Ah, you were the one who coerced these sentries out of the area before the attack. Nicely done! It is time to complete our domination. The Militia are advancing and beginning to clear the area. It is time to strike, quickly!")

end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    SummonItem(Spawn, 48997, 1)
    
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth003.mp3", "", "", 3312554119, 4055641204, Spawn)
    AddConversationOption(Conversation, "I'll burn the tents of the Qeynosians.")
        StartConversation(Conversation, NPC, Spawn, "Take this torch. Work your way in and set fire to two of the nearby tents. Others have begun the razing as well. If another's flame fails, make sure you finish the job. This island will soon be ours!")
	SetStepComplete(Spawn, TheFinalAssault, 1)
end

function LostTorch(NPC, Spawn)
    if HasQuest(Spawn, TheFinalAssault) then
        if HasItem(Spawn, 48997, 1) then
            FaceTarget(NPC, Spawn)
            Conversation = CreateConversation()

            AddConversationOption(Conversation, "Doh")
                StartConversation(Conversation, NPC, Spawn, "You already have a torch.")
        else
            SummonItem(Spawn, 48997, 1)
        end
    end
end