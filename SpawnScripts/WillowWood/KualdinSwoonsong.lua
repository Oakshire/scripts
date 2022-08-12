--[[
	Script Name	: SpawnScripts/Baubbleshire/GanlaDindlenod.lua
	Script Purpose	: Kualdin Swoonsong 
	Script Author	: Dorbin
	Script Date	: 2022.02.13
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5471

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
        FactionChecking(NPC, Spawn, faction)
else
if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery)  then 
    if math.random(1, 100) <= 80 then
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
    if not HasQuest(Spawn, Delivery) and not HasCompletedQuest(Spawn, Delivery) then
    Dialog1(NPC,Spawn)
    elseif HasQuest(Spawn, Delivery) and not HasCompletedQuest(Spawn, Delivery) then
    Dialog2(NPC,Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_callout_47db249c.mp3", "Gather around people ... gather around. I'll be warming up my voice in a few minutes.", "smirk", 1269733907, 434806140, Spawn)
    end    
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail to you, fair adventurer.  If you want to wait around a bit, my devotees will be gathering soon to hear my latest masterpiece sung by yours truly.")
	Dialog.AddVoiceover("voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong000.mp3", 4042301311, 2032672217)
	PlayFlavor(NPC, "", "", "royalwave", 0, 0, Spawn)
	Dialog.AddOption("Are you preparing for a concert?", "Book")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
	end


function Dialog2(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
         PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3","","nod",0,0,Spawn)
        if GetQuestStep (Spawn, Delivery) == 2 then
        AddConversationOption(conversation, "Bupipa agreed to join you as long as she can have her own solo performance.", "Delivered")
        end
        AddConversationOption(conversation, "I'm still heading that way.")
        StartConversation(conversation, NPC, Spawn, "Did you find Bupipa! You must find her! She'll be elated to sing at my concert.")
end

 function Book(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A concert? Oh, no! Concerts are held in lavish auditoriums and feature many different songs. Unfortunately, right now, I don't have access to a concert hall. But I'm holding an event soon! I even have a partner for duets ... Well, I haven't actually asked the singer I have in mind ... Would you do me a favor and ask if she'll accompany me?")
	Dialog.AddVoiceover("voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong001.mp3", 1787982830, 1127515675)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("Who do you want to ask?", "QuestBegin")
	Dialog.AddOption("I'm a bit preoccupied. Sorry.")
	Dialog.Start()
end   


function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wonderful! I'll add Buipia to my concert plans. I'll fit her in somewhere between my second and fifth solo. Thanks for your help. Take this coin for your time. You MUST save it and buy a concert ticket!")
	Dialog.AddVoiceover("voiceover/english/kualdin_swoonsong/qey_village05/kualdinswoonsong003.mp3", 2468409303, 338695465)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("I'll concider it. Glad I could help.", "Reward")
	Dialog.Start()
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end




