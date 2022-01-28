--[[
	Script Name	: SpawnScripts/Castleview/Knight-CaptainGerathalas.lua
	Script Purpose	: Knight-Captain Gerathalas <Qeynos Guard>
	Script Author	: Dorbin
	Script Date	: 2022.01.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local Rats = 5460

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, Rats)
end

function respawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Rats) and not HasQuest (Spawn, Rats) then 
        choice = math.random(1,2)
    FaceTarget(NPC, Spawn)
        if choice ==1 then
        	PlayFlavor(NPC, "", "Keep an eye out soldiers! The rats are getting into the food stores again! You adventurer. Would you help rid the city of these putrid vermin?","attention", 0, 0, Spawn)
    	else
    	PlayFlavor(NPC, "", "Good day adventurer! I hope you are staying safe on your arduous journey. Please move on. I must'nt bother you with the unpleasant mission at hand.", "attention", 0, 0, Spawn)
    	 end
     else
         choice = math.random(1,3)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "", "Good day to you, adventurer.  I hope you have been keeping yourself safe.", "salute", 0, 0, Spawn)
         elseif choice ==2 then
        FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
		else
		PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
        end
    end
    end
end


--[[function dawn(NPC,Spawn)  -- Playing with leaving during the night and returning in the day. Faaaaailure.
    if not IsNight(GetZone(NPC))  then
    SpawnMob(NPC, 2360031)
        PlayFlavor(NPC,"","","stretch",0,0)
     MoveToLocation(NPC, 729.04, -21.05, -142.38, 2)
     MoveToLocation(NPC, 728.217, -20.5, -129.013, 2)
     end
  

function dusk(NPC,Spawn)
    --local Awake = GetSpawn(NPC, 2360031)
    if IsNight(GetZone(NPC))  then
        Say(NPC, "It is night")
    PlayFlavor(NPC,"","","yawn",0,0)
    PlayAnimation(NPC, 891)
    AddTimer(NPC,11000, "GoToSleep")
    end
end

function GoToSleep(NPC)
 MoveToLocation(NPC, 726.90, -21.1, -139.30, 2)
 MoveToLocation(NPC, 729.04, -21.05, -142.38, 2)
     AddTimer(NPC,8000, "Sleep")
end

function Sleep(NPC)
    Despawn(NPC)
    end]]--



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, Rats) and not HasCompletedQuest(Spawn, Rats) then
        conversation = CreateConversation()   
        AddConversationOption(conversation, "I can provide assistance if needed.", "ICan")
	    AddConversationOption(conversation, "Good day to you too!")
	    StartConversation(conversation, NPC, Spawn, "Good day to you, adventurer.  I hope you have been keeping yourself safe.")
	else if HasQuest(Spawn, Rats) then 
	    if GetQuestStep(Spawn, Rats)==2 then
	    AddConversationOption(conversation, "I've reduced the number of putrid vermin in the catacombs.", "DoneRats")
	    end
	    AddConversationOption(conversation, "I'm still dealing with them.")
	    StartConversation(conversation, NPC, Spawn, "So? Were you able to take care of those rats? Our food stores can't deal with more problems!")
	    
    else
	    GenericHail(NPC, Spawn)
	    Say(NPC, "Good day to you, adventurer.  I hope you have been keeping yourself safe.", Spawn)
        end
    end
end

function ICan(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I can deal with whatever you need exterminating.", "Exterminate")
    AddConversationOption(conversation, "I'd rather not get my hands dirty. Sorry.")
    StartConversation(conversation, NPC, Spawn, "Oh, you can, can you? Some vermin are eating the food supply. Can you handle... an extermination mission?")
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
end


function Exterminate(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll deal with them.", "QuestStart")
    AddConversationOption(conversation, "In the catacombs? I'll stay up here thank you very much!")
    StartConversation(conversation, NPC, Spawn, "Good, good! The vermin live in the catacombs. Bring me back some of those putrid rat's tails and I'll reward you with a piece of armor.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Rats)
end

function DoneRats(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.", "QuestDone")
    StartConversation(conversation, NPC, Spawn, "Ah, you did. These look like they came off some big vermin. No easy pray for you, I see. Here is the piece of armor I promised you. May it protect you against a more dangerous foe.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function QuestDone(NPC, Spawn)
    SetStepComplete(Spawn, Rats, 2)
   end