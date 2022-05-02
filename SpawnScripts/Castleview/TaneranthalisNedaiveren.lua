--[[
	Script Name	: SpawnScripts/Castleview/TaneranthalisNedaiveren.lua
	Script Purpose	: Taneranthalis Nedaiveren 
	Script Author	: Dorbin
	Script Date	:      2022.01.26
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Jewel = 5459 

function spawn(NPC)
ProvidesQuest(NPC, Jewel)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange (NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    GoodFactionEmotes(NPC, Spawn, faction)
    else    
     if math.random(1, 100) <= 60 then
        if not HasQuest (Spawn, Jewel) and not HasCompletedQuest(Spawn, Jewel) then
        local Lista = GetSpawn(NPC,2360011)    
        local choice = math.random(1, 3)
        if choice == 1 then
            FaceTarget(NPC,Spawn)
	        PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	   elseif choice == 2 then
	        FaceTarget(NPC,Spawn)
	       	PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_callout_b8c9bef.mp3", "Please be at ease. Though we stand outside the great gates of the city proper, you are as safe in Castleview as anywhere in Norrath!", "agree", 4095321012, 2558651917, Spawn)
        else
            FaceTarget(NPC,Spawn)
            PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_multhail2_c2e4d5a7.mp3", "It seems like just yesterday I was a small child brought to Qeynos from Felwithe. Though its white towers are but a distant memory, the Koada'dal in Castleview keep the elven spirit alive", "", 2103458666, 2948247370, Spawn)
        end
        else 
            FaceTarget(NPC,Spawn)
	        PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
        	if Lista ~=nil then
            FaceTarget(Lista,Spawn)
            end	        
        end
      end
    end
end

function hailed(NPC, Spawn)
local Lista = GetSpawn(NPC,2360011)    
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else	
	if Lista ~=nil then
    FaceTarget(Lista,Spawn)
    end
	 conversation = CreateConversation()
	if GetLevel(Spawn) >=7 then
	    PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren000.mp3", "", "", 1954171614, 860807179, Spawn)
        if not HasQuest (Spawn, Jewel) and not HasCompletedQuest(Spawn, Jewel) then
        AddConversationOption(conversation, "How old are you?", "Old")
        end
            if GetQuestStep(Spawn, Jewel)==2 then
            AddConversationOption(conversation, "Here is your package you requested.","Delievered")
            end        
        AddConversationOption(conversation, "Castleview is a sight to behold, indeed.","Stop")
        AddConversationOption(conversation, "If you say so.","Stop")
        StartConversation(conversation, NPC, Spawn, "It seems like just yesterday I was a small child brought to Qeynos from Felwithe. Though its white towers are but a distant memory, the Koada'dal in Castleview keep the elven spirit alive.")
	    else
		    PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_multhail1_d1775db6.mp3", "Please move on, traveler. I must attend to important business matters.", "", 3098654696, 1348141498, Spawn)
	    end
    end
end

 function Old(NPC, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren001.mp3", "", "ponder", 1601004679, 425254120, Spawn)
  AddConversationOption(conversation, "Of course, what do you need?", "Need")
  AddConversationOption(conversation, "Unfortunately, I'm busy.","Stop")
  StartConversation(conversation, NPC, Spawn, "I am older than you'd think. I've walked the earth for more than three centuries. My age brings to light that I've not chosen a life partner. Of late, Listalania and I are getting closer. Perhaps the time is nigh for me to seek her hand... Hmm, would you do me a favor?")
end   

 function Need(NPC, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren002.mp3", "", "agree", 1622360856, 1471149811, Spawn)
  AddConversationOption(conversation, "I will be back with your package.", "Package")
  AddConversationOption(conversation, "Unfortunately, I'm busy.","Stop")
  StartConversation(conversation, NPC, Spawn, "It's a simple task. I need you to deliver a note to Tara Ironforge at the Jewel Box in North Qeynos. The shop isn't difficult to find. It is outside the Ironforge estate. Look for the Ironforge shops in the southern section of the district. Return with the package Tara gives you.")
end   

 function Delievered(NPC, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren003.mp3", "", "thank", 3530480629, 3338631885, Spawn)
  AddConversationOption(conversation, "I'm glad to have helped.", "Payment")
  StartConversation(conversation, NPC, Spawn, "Thank you... I'm not certain when I'll ask Listalania, but now I'm prepared for when that time comes. You've done me a great service! Please accept these coins as a token of my gratitude.")
end   

function Package (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Jewel)
end

function Payment(NPC, Spawn)
    SetStepComplete(Spawn, Jewel, 2)
    end

function Stop(NPC,Spawn)
  PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
 end


