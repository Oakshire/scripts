--[[
	Script Name	: SpawnScripts/Castleview/Bulurg.lua
	Script Purpose	: Bulurg <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
--dofile("SpawnScripts/Generic/GenericBartenderVoiceOvers.lua")

local Water = 5456

function spawn(NPC)
ProvidesQuest(NPC,Water)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
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
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good to see you found my Hole-in-the-Wall Tavern! Taste my brews made with real swamp water, now with more flies!")
	Dialog.AddVoiceover("voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg000.mp3", 1246934802, 3942849521)
        if not HasQuest (Spawn, Water) and not HasCompletedQuest(Spawn, Water) then    
        Dialog.AddOption( "Have anything... less swampy?", "Swampy")
        Dialog.AddOption( "Do the locals drink your bog spirits?", "Swampy")
        end 
        if HasQuest (Spawn, Water) and GetQuestStep(Spawn, Water) == 2 then
        Dialog.AddOption("Here is a full jug of water from the Oakmyst falls.", "FullJug")
        end
        Dialog.AddOption("I'm good for now, thanks.")	
        Dialog.Start()
    end
    


 function Swampy(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mine fellow Frogloks wouldst not drink any other libation.  Alas, I confess, the high elf palate is most finicky for such a natural intoxication.  I'th been experimenting with a drink they may perhaps prefer, but I needst a jug of fall water for the first batch.")
	Dialog.AddVoiceover("voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg001.mp3",3151049449,2885168239)
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
   Dialog.AddOption("I could fetch some water for you.", "TakeJug")
   Dialog.AddOption("Unfortunately, I don't have time to help.")
   Dialog.Start()
end   


 function FullJug(NPC, Spawn)
    SetStepComplete(Spawn, Water, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh! Excellent work! Now I can create Tunare's Finest. It is taken from a recipe I purchased from a traveling merchant. With such a noble name, I cannot forsee the high elves resisting its sweet nectar.")
	Dialog.AddVoiceover("voiceover/english/bartender_bulurg/qey_village04/bartenderbulurg003.mp3",2084504638, 1586575604)
 	PlayFlavor(NPC, "", "", "happy", 0,0 , Spawn)
   Dialog.AddOption("Glad I could help.")
   Dialog.Start()
   end   

function TakeJug (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Water)
end
