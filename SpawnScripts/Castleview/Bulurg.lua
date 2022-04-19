--[[
	Script Name	: SpawnScripts/Castleview/Bulurg.lua
	Script Purpose	: Bulurg <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
--dofile("SpawnScripts/Generic/GenericBartenderVoiceOvers.lua")

local Water = 5456

function spawn(NPC)
ProvidesQuest(NPC,Water)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange (NPC,Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else     
     if math.random(1, 100) <= 70 then
         if not HasCompletedQuest(Spawn, Water) then 
        PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/100_bartender_bulurg_callout_a4a7c4a8.mp3", "Oh dear. Oh dear! The elven libation is dry! Only if all the locals would drink my bog-spirits.", "frustrated", 731296695, 1004786482, Spawn)
        end
        else
	    PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/100_bartender_bulurg_multhail2_756404e8.mp3", "I spy that thou'st might enjoy a taste of my brews with real swamp water! Would'st this be the case?", "hello", 1254546536, 617051761, Spawn)
        end
    end
end


function hailed(NPC, Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else        
    if not HasCompletedQuest(Spawn, Water) then
            QuestStart(NPC, Spawn,conversation)
    else
      	FaceTarget(NPC, Spawn)  
        local choice = math.random(1,4)
	        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/bartender/froglok_bartender_service_good_1_hail_gf_ce733912.mp3", "I bet you have some stories, eh?  Adventuring must be an exciting life!", "", 1840731743, 2065794369, Spawn)
	        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/bartender/froglok_bartender_service_good_1_hail_gf_ce1f039f.mp3", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "", 2337190060, 175840912, Spawn)
            elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/bartender/froglok_bartender_service_good_1_hail_gf_41d55b0d.mp3", "The best part about this job is all the extra coin I get.", "", 2888286231, 967545209, Spawn)
	        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg000.mp3", "Good to see you found my Hole-in-the-Wall Tavern! Taste my brews made with real swamp water, now with more flies!", "hello", 1246934802, 3942849521, Spawn)
        end
    end
end
end

    function QuestStart(NPC, Spawn, conversation)
    FaceTarget(NPC,Spawn)
    if not HasQuest (Spawn, Water) and not HasCompletedQuest(Spawn, Water) then
         conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg000.mp3", "", "hello", 1246934802, 3942849521, Spawn)
        AddConversationOption(conversation, "Have anything... less swampy?", "Swampy")
        AddConversationOption(conversation, "Do you think elves enjoy swamp water?", "Swampy")
        AddConversationOption(conversation, "I'm good for now, thanks.")
        StartConversation(conversation, NPC, Spawn, "Good to see you found my Hole-in-the-Wall Tavern! Taste my brews made with real swamp water, now with more flies!")
       elseif HasQuest (Spawn, Water) then
         conversation = CreateConversation()
        if GetQuestStep(Spawn, Water) == 2 then
        AddConversationOption(conversation, "Here is a full jug of water from Oakmyst falls.", "FullJug")
        end
    AddConversationOption(conversation, "I'm still looking.")
    StartConversation(conversation, NPC, Spawn, "How goes searching for that water? The elves keep their nose too high amongst my normal libations.")
        end
    end


 function Swampy(NPC, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg001.mp3", "", "ponder", 3151049449,2885168239, Spawn)
  AddConversationOption(conversation, "I could fetch some water for you.", "GetWater")
  AddConversationOption(conversation, "Unfortunately, I don't have time to help.")
  StartConversation(conversation, NPC, Spawn, "My fellow frogloks woulds't drink any other libation. Alas, I confess, the high elf pallet is most more finicky to such a natural intoxicant. I have been experimenting with a drink they perhaps prefer, but I need'st a jug of fall water for the first batch.")
end   

 function GetWater(NPC, Spawn)
    FaceTarget(NPC,Spawn)
     PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg002.mp3", "", "", 2371403827,3750341640, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Alright, I'll take the jug and head that way.", "TakeJug")
  AddConversationOption(conversation, "I prefer not to get wet. Sorry.")
  StartConversation(conversation, NPC, Spawn, "That would'st be most kind. Take this jug and then venture into the Oakmyst Forest. This is where thou will find a waterfall. Enter the waterfall and fill thyne jug with this fall water before touch'th the pond water.")
end   

 function FullJug(NPC, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg003.mp3", "", "happy", 2084504638, 1586575604, Spawn)
  AddConversationOption(conversation, "Glad I could help.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Oh! Excellent work! Now I can create Tunare's Finest. It is taken from a recipe I purchased from a traveling merchant. With such a noble name, I cannot forsee the high elves resisting its sweet nectar.")
end   

function TakeJug (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Water)
end

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Water, 2)
    end