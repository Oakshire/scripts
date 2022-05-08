--[[
	Script Name	: SpawnScripts/ForestRuins/SergeantatArmsUthros.lua
	Script Purpose	: Sergeant at Arms Uthros 
	Script Author	: Dorbin
	Script Date	: 2022.02.22
	Script Notes	:
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 5486)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")	
end

function InRange(NPC, Spawn) 
   if math.random(1, 100) <= 75 then
         choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
            elseif choice ==2 then
            PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            end
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
