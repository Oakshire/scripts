--[[
	Script Name	: SpawnScripts/TheBaubbleshire/KaldinDeeppockets.lua
	Script Purpose	: Kaldin Deeppockets <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
	Script Notes	: Updated Dialog Module 2022.08.22 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5444

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
	ProvidesQuest(NPC, Delivery)
end

function respawn(NPC)
	spawn(NPC)
end

function LeaveRange(NPC, Spawn)
end

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout Flavor
if math.random(1, 100) <= 75 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) and GetFactionAmount(Spawn,11) >0 then 
         choice = math.random(1,2)
             if choice ==1 then
             PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
            else
             PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn)
            end
        else
        if GetFactionAmount(Spawn,11) >0 then           
        FaceTarget(NPC, Spawn)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            end
        end
        end
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
    else    
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What's all this madness?! Are Deeppockets working for someone else? What's become of us!? Enough of my woes. What's your order? Be quick with it.")
	Dialog.AddVoiceover("voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets000.mp3", 107874926, 2254072034)
    PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
	Dialog.AddOption("I'm actually looking for work.", "Job1")
	Dialog.AddOption("Actually, I'll speak to Bregun about a drink. Thanks.")
	Dialog.Start()       
        elseif not HasCompletedQuest (Spawn, Delivery) and  HasQuest (Spawn, Delivery) then 
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did Coppershot appreciate our latest batch?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", 0, 0)
    PlayFlavor(NPC, "","","hello",0,0,Spawn)
    
	Dialog.AddOption("I delievered the lager to Coppershot. He wanted me to give you this old stein.", "Delivered")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, Delivery , 2)

	Dialog.AddOption("I'm still heading to Graystone Yard. I'll be back.")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, Delivery , 1)
	Dialog.Start()       
    else 
    choice = math.random(1,2)
	if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)

    end
end
end
end

function respawn(NPC)
	spawn(NPC)
end

 function Job1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Its no shame to be out of work in these tough times. Keep your chin up, friend. In fact, if you're looking to make some coin, I could use your help right now!")
	Dialog.AddVoiceover("voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets001.mp3", 635967568, 2169058204)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("I'll take any job you have.", "Job2")
	Dialog.AddOption("Actually, I'll speak to Bregun about a drink. Thanks.")
	Dialog.Start()  
end   

 function Job2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's the spirit! See this jug of Lendel's Grand Lager? I need someone to deliever it to bartender Coppershot at the Frozen Tundra Tavern in Graystone Yard. Would you take it to him?")
	Dialog.AddVoiceover("voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets002.mp3", 273979806, 1884621205)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddOption("Sure, sounds like as good of a job as any.", "QuestBegin", "QuestBegin")
	Dialog.AddOption("Actually, I'll speak to Bregun about a drink. Thanks.")
	Dialog.Start()  
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A stein from the Fool's Gold Tavern?! This is rare, indeed! That ancient tavern disappeared long ago! Oh, this cheers my heart! Here, please accept this coin I promised to you.")
	Dialog.AddVoiceover("voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets003.mp3", 1808434879, 1588622317)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddOption("Enjoy the stein! Glad I could help.", "Reward")
	Dialog.Start()  
	end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end







