--[[
	Script Name	: SpawnScripts/QeynosHarbor/RobertNewbury.lua
	Script Purpose	: Robert Newbury <Banker>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Tally = 5508

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

	PlayFlavor(NPC, "voiceover/english/banker_robert_newbury/qey_harbor/bankerrobertnewbury.mp3", "", "", 1059198737, 1183516549, Spawn)
    if GetQuestStep(Spawn,Tally)==1 then     
    AddConversationOption(conversation, "I'm here delivering Graystone's bank tally.", "DeliveryDone")
    end		
		
		AddConversationOption(conversation, "I'll keep that in mind in the future.")
	StartConversation(conversation, NPC, Spawn, "I'll take care of your coin and goods if they need safekeeping.")
end

 function DeliveryDone(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/banker_robert_newbury/qey_harbor/bankerrobertnewbury000.mp3","","ponder",3741382425,2971176435,Spawn)
  AddConversationOption(conversation, "Alright. I'll take the letter to her.", "QuestBegin1")
  StartConversation(conversation, NPC, Spawn, "Let me see it. Quickly!  This is long overdue!... Hmm-  These figures are all wrong!  I'll need Dori to inventory her all of her branch.  Deliver this letter to Dori.  She'll know what to do.")
end   

function QuestBegin1(NPC, Spawn)
    	SetStepComplete(Spawn, Tally, 1)
    end
