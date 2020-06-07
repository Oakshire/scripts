--[[
	Script Name	: CaptainTyreth.lua
	Script Purpose	: Captain Tyreth
	Script Author	: vo1d
	Script Date	: 10/12/2019
        Modified Date   : 20.05.2020
        Modified by     : premierio015
        Modified Notes  : Now have all dialogues.
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
        
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth001.mp3", "", "cheer", 3280197482, 1135652426, Spawn)
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
        FaceTarget(NPC, Spawn)
        Conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth005.mp3", "", "nod", 923930455, 1610949700, Spawn)
        AddConversationOption(Conversation, "I'm ready!", "dlg_4")
        AddConversationOption(Conversation, "Not yet.")
        StartConversation(Conversation, NPC, Spawn, "The rising smoke reveals your courage, but are you ready to finish what we have started?")
    elseif HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 4 then
        dlg_4(NPC, Spawn)
    elseif HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 5 then
     FaceTarget(NPC, Spawn)
     Conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth008.mp3", "", "", 3914904954, 1520768804, Spawn)
     AddConversationOption(Conversation, "How did you know about the key?", "dlg_5")
     AddConversationOption(Conversation, "I need to be leaving.")
     StartConversation(Conversation, NPC, Spawn, "So, Adrium is dead. I take it you found the key?")
   elseif HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 6 then
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth014.mp3", "", "", 3703486693, 661668972, Spawn)
    AddConversationOption(Conversation, "Okay, I'm heading to the cave.")
    AddConversationOption(Conversation, "I lost my torch!", "LostTorch")
    StartConversation(Conversation, NPC, Spawn, "The cave is just north of Adrium's tree house, through some fallen boulders. Head inside and take out the Circle of Elders.")
    end
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth002.mp3", "", "nod", 3182304037, 930301833, Spawn)
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

function dlg_4(NPC, Spawn)
 SetStepComplete(Spawn, TheFinalAssault, 3)
 FaceTarget(NPC, Spawn)
 Conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth006.mp3", "", "", 4062545694, 2647153674, Spawn)
 AddConversationOption(Conversation, "I will head to the tree house.")
 StartConversation(Conversation, NPC, Spawn, "We believe that the leader of these elves waits atop a tree house, located through the archway to the east. It is certain that the flames have been spotted, so we need to act quickly. You must travel to the top of this tree house and finish the battle.")
end

function dlg_5(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 Conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth009.mp3", "", "laugh", 3808552828, 1984603379, Spawn)
 AddConversationOption(Conversation, "Wait, our goal isn't to take the island?", "dlg_6")
 StartConversation(Conversation, NPC, Spawn, "You still have much to learn "..GetName(Spawn)..", but I'll let you in on a little secret. Sometimes things are best left unsaid until they reveal themselves. We have been watching your every move, and you have proven quite worthy of our true goal.")
end

function dlg_6(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 Conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth010.mp3", "", "", 4076128835, 186998807, Spawn)
 AddConversationOption(Conversation, "So I've been used?", "dlg_7")
 StartConversation(Conversation, NPC, Spawn, "Of course it is, but there is something more. You know that mine that you took the samples from? The samples were packed with precious lapis lazuli, more so than any other source near Freeport.")
end

function dlg_7(NPC, Spawn)
FaceTarget(NPC, Spawn)
Conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth011.mp3", "", "nod", 3132321879, 2651058046, Spawn)
AddConversationOption(Conversation, "What must I do?", "dlg_8")
StartConversation(Conversation, NPC, Spawn, "No "..GetName(Spawn)..", you've been training. Training for the final confrontation you are about to take part in. You think Tayil couldn't have just done this all herself? Prove to us you are ready to become an esteemed citizen of Freeport and share in the wealth.")
end

function dlg_8(NPC, Spawn)
FaceTarget(NPC, Spawn)
Conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth012.mp3", "", "", 4033964775, 2680329984, Spawn)
AddConversationOption(Conversation, "And what about the loot you spoke of?", "dlg_9")
StartConversation(Conversation, NPC, Spawn, "We've been ''questioning'' some captives and had scouts follow the Tunarian haulers from the mine to a cave near the back of Adrium's tree house. We believe that this cave holds the true leaders of the elves, known as the Circle of Elders.")
end

function dlg_9(NPC, Spawn)
SetStepComplete(Spawn, TheFinalAssault, 5)
FaceTarget(NPC, Spawn)
Conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth013.mp3", "", "laugh", 3051361848, 2529619741, Spawn)
AddConversationOption(Conversation, "Consider it done.")
StartConversation(Conversation, NPC, Spawn, "Ha ha, good form! You sound like a Freeport citizen already! The loot should be in the cave. Nothing has left the island for months, we've had it completely surrounded. Head in there and take care of the elders.")
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