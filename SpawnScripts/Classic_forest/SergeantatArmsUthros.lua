--[[
    Script Name    : SpawnScripts/Classic_forest/SergeantatArmsUthros.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.13 01:10:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 5486)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")	
    waypoints(NPC)
end

function InRange(NPC, Spawn) 
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "shakefist", 0, 0)
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, 5486) 
	conversation = CreateConversation()

    if GetQuestStep(Spawn,5486) ==2 then
    SetStepComplete(Spawn, 5486, 2)
	PlayFlavor(NPC, "voiceover/english/sergeant_at_arms_uthros/qey_adv02_ruins/quests/sergeant_uthros/sergeant_uthros002.mp3", "", "hello", 1245586444, 1008307013)
	    if count <= 5 then
	    AddConversationOption(conversation, "Sure.", "dlg_14_2")
	    end
	AddConversationOption(conversation, "Not right now. ")
	StartConversation(conversation, NPC, Spawn, "Hey! Great work on the vermin.  Can you spare more time to help Qeynos?")
     
	elseif not HasCompletedQuest(Spawn, 5486) then
		PlayFlavor(NPC, "voiceover/english/sergeant_at_arms_uthros/qey_adv02_ruins/quests/sergeant_uthros/sergeant_uthros.mp3", "", "salute", 2454266022, 3710462328)
    
	    if not HasQuest(Spawn, 5486) then
		AddConversationOption(conversation, "I'm intent on staying.", "dlg_0_1")
		end
		AddConversationOption(conversation, "Perhaps I should play it safe and go back to the village.")
		StartConversation(conversation, NPC, Spawn, "Watch your step, friend. Many adventurers get injured because they don't know the dangers that lurk here. These grounds are home to the ruins of the old mage academy.  It was destroyed during the wars that raged centuries ago.  And aside from the already dangerous inhabitants of these ruins,  elemental servants of mages lurk about. Scared yet? ... If you're intent on staying in Qeynos, I suppose we can use your help.")
	

    else	    
        PlayFlavor(NPC, "voiceover/english/sergeant_at_arms_uthros/qey_adv02_ruins/quests/sergeant_uthros/sergeant_uthros002.mp3", "", "", 1245586444, 1008307013)
        if not HasQuest(Spawn, 5486) and count <= 5 then
	    AddConversationOption(conversation, "Sure.", "dlg_14_2")
	    end
	    if not HasQuest(Spawn, 5486) then
	    AddConversationOption(conversation, "Not right now. ")
	    end
	    if HasQuest(Spawn, 5486) then
	    AddConversationOption(conversation, "I'm working on it.")
        end
	    StartConversation(conversation, NPC, Spawn, "Hey! Great work on the vermin.  Can you spare more time to help Qeynos?")
    end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/sergeant_at_arms_uthros/qey_adv02_ruins/quests/sergeant_uthros/sergeant_uthros000.mp3", "", "", 1978368877, 3695152842)

	AddConversationOption(conversation, "Sounds good.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Well, then, make yourself useful and kill some of the nasty vermin who live in this area.   And if you need something to do later, come on back, I always need help!")
end


function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/sergeant_at_arms_uthros/qey_adv02_ruins/quests/sergeant_uthros/sergeant_uthros003.mp3", "", "salute", 827162019, 3003960469)
	AddConversationOption(conversation, "You bet.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Great! Then go and kill more vermin.")
end

function dlg_0_2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, 5486)
end


function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133777752 then
        	MovementLoopAddLocation(NPC, 898.56, -15.35, -572.21, 2, 0)
	MovementLoopAddLocation(NPC, 901.94, -16.04, -569.54, 2, 0)
	MovementLoopAddLocation(NPC, 907.79, -17.07, -564.93, 2, 0)
	MovementLoopAddLocation(NPC, 913.01, -18.62, -562.48, 2, 0)
	MovementLoopAddLocation(NPC, 921.17, -20.85, -562.89, 2, 0)
	MovementLoopAddLocation(NPC, 926.05, -21.07, -563.82, 2, 15)
	MovementLoopAddLocation(NPC, 927.38, -21.09, -564.07, 2, 0)
	MovementLoopAddLocation(NPC, 927.21, -21, -562.63, 2, 0)
	MovementLoopAddLocation(NPC, 923.29, -20.84, -560.9, 2, 0)
	MovementLoopAddLocation(NPC, 914.8, -19.08, -561.61, 2, 0)
	MovementLoopAddLocation(NPC, 908.12, -17.14, -563.96, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -15.95, -569.31, 2, 0)
	MovementLoopAddLocation(NPC, 898.81, -15.28, -573.93, 2, 15)
	MovementLoopAddLocation(NPC, 897.44, -15.07, -573.54, 2, 0)
	MovementLoopAddLocation(NPC, 896.75, -14.98, -572.09, 2, 0)
	MovementLoopAddLocation(NPC, 893.36, -13.91, -566.7, 2, 0)
	MovementLoopAddLocation(NPC, 891.35, -13.05, -561.21, 2, 15)
	MovementLoopAddLocation(NPC, 896.42, -14.91, -572.29, 2, 0)
	MovementLoopAddLocation(NPC, 897.13, -14.97, -573.72, 2, 15)
end
end
