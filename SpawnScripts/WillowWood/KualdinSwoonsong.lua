--[[
	Script Name	: SpawnScripts/Baubbleshire/GanlaDindlenod.lua
	Script Purpose	: Kualdin Swoonsong 
	Script Author	: Dorbin
	Script Date	: 2022.02.13
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Delivery = 5471

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
        FactionChecking(NPC, Spawn, faction)
else
if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) and GetLevel(Spawn) >=6 then 
    if math.random(1, 100) <= 70 then
            choice = math.random(1,3)
    FaceTarget(NPC, Spawn)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_callout_47db249c.mp3", "Gather around people ... gather around. I'll be warming up my voice in a few minutes.", "orate", 1269733907, 434806140, Spawn)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_multhail2_1c41a7b8.mp3", "Hail, fair adventurer. If you can spare some time, my devotees are gathering to hear the latest masterpiece by yours truely.", "royalwave", 2123310145, 515687997, Spawn)
    elseif choice ==3 then
    PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_multhail1_7f060d18.mp3", "Hail fair, adventurer. Please be on your way. I've no time for chatting with commoners. I must warm up my voice. My fans await me...", "smirk", 2685665398, 3421389957, Spawn)
    end
    end
else  
    if math.random(1, 100) <= 50 then
    choice = math.random(1,2)
    if choice ==1 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "royalwave", 0, 0, Spawn)
         else
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
         end
    end
    end
end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
        FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
else
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_multhail2_1c41a7b8.mp3", "", "royalwave", 2123310145, 515687997, Spawn)
        if not HasQuest(Spawn, Delivery) and not HasCompletedQuest(Spawn, Delivery) then
        AddConversationOption(conversation, "Are you preparing for a concert?", "Book")
        end
        if GetQuestStep (Spawn, Delivery) == 2 then
        AddConversationOption(conversation, "Bupipa agreed to join you as long as she can have her own solo performance.", "Delivered")
        end
        AddConversationOption(conversation, "Not right now. Goodbye.")
        StartConversation(conversation, NPC, Spawn, "Hail to you, fair adventurer. If you want to wait around a bit my devotees will be gathering soon to hear my ... latest... masterpiece sung by yours truely.")
    end
end

 function Book(NPC, Spawn)
  	FaceTarget(NPC, Spawn)   
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong001.mp3", "", "no", 1787982830, 1127515675, Spawn)
    AddConversationOption(conversation, "Who do you want to ask?", "PieBook")
    AddConversationOption(conversation, "I don't have time. Sorry.")
  StartConversation(conversation, NPC, Spawn, "A concert? Oh, no! Concerts are held in lavish auditoriums and feature many different songs. Unfortunately right now I don't have access to a concert hall, but I am holding an event soon! I even have a partner for duets!... Well, I haven't actually asked the singer I had in mind. Would you do me a favor and ask if she would accompany me?")
end   

 function PieBook(NPC, Spawn)
  	FaceTarget(NPC, Spawn)   
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong002.mp3", "", "", 23545717, 1052293137, Spawn)
  AddConversationOption(conversation, "I will go ask her for you.", "QuestBegin")
  StartConversation(conversation, NPC, Spawn, "Her name is Bupipa Guryup and she resides in Castleview. I would ask her, but I hate denying my fans a daily seranade. Please, let me know if she accepts my offer.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
  	FaceTarget(NPC, Spawn)   
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong003.mp3", "", "thank", 2468409303, 338695465, Spawn)
  AddConversationOption(conversation, "I'll concider it. Glad I could help.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Wonderful! I'll add Buipia to my concert plans. I'll fit her in somewhere between my second and fifth solo. Thanks for your help. Take this coin for your time. You MUST save it and buy a concert ticket!")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end




