--[[
	Script Name	: SpawnScripts/Castleview/Fevalin.lua
	Script Purpose	: Fevalin <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	:
--]]
require "SpawnScripts/Generic/DialogModule"

local Rats = 5464
local Bats = 5463


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC, Rats)

end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 70 then
        choice = math.random(1,2)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/100_merchant_right_fevalin_callout_7243eb33.mp3", "Step up. Don't be shy. I know an adventurer like you needs something. A lantern. Boots! Perhaps a sword, friend.", "beckon", 2065968741, 2942201215, Spawn)
    	elseif choice ==2 then
	    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)        
        end
    end
end




function hailed(NPC, Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to my store. You'll notice merchant Kruuprum has setup shop next door. We've actually been working to provide you, the customer, a greater a varaity of wares.")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin.mp3", 2353063125, 3076810683)
	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
            if not HasQuest(Spawn, Rats) and not HasCompletedQuest(Spawn,Rats) then       
               Dialog.AddOption("I do not seek wares. I seek employment.", "RatsStart")
            end
            if not HasQuest(Spawn, Bats) and GetLevel(Spawn)>=6 then       
              Dialog.AddOption("You and Kruuprum have a decent selection! Need any help?", "BatsStart")
            end
            if GetQuestStep(Spawn, Rats)==2 then
	           Dialog.AddOption("Here are some bugs for you to munch on.", "RatsDone")
	        end
	        if GetQuestStep(Spawn, Bats)==2 then
	           Dialog.AddOption("Here are your five albino pelts.", "BatsStep2")
	        end
	        if GetQuestStep(Spawn, Bats)==4 then
	           Dialog.AddOption("Here are five MORE albino pelts.", "BatsDone")
	        end
	        
        Dialog.AddOption("I'm just browsing. Thank you.")	
        Dialog.Start()
	          end
end


 function BatsStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes. Between the two of us, we stock everything a budding adventurer like you desires. Although unfortunately I've had no luck getting some quality bleached fur.")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin000.mp3",1928749418,2952011097)
 	PlayFlavor(NPC, "", "", "sniff", 0,0 , Spawn)
    Dialog.AddOption("Bleached fur? You mean white?", "BatsBegin")
    Dialog.AddOption("Well, that's too bad. I must be going.")
    Dialog.Start()
end   

 function BatsBegin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes! That's precisely what I mean. You see, only one animal exists with fur fine enough for my needs. At least, a white animal. The albino bats in the caves near Baubbleshire have the softest coats I've laid my hands on. Now how about you run and fetch me some fur from these silky creatures?")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin001.mp3",2715227809,2814889232)
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
    Dialog.AddOption("I think I could do that.  I'll be back when I have them.", "QuestStart2")
    Dialog.AddOption("I don't do caves. Sorry")
    Dialog.Start()
end   

 function BatsStep2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh... You know, I'm really sorry about this, but I'm going to have you go ahead and get me some more. That would be great. Now go along and get them. I'll go ahead and hold the ones you just brought me. I wouldn't want them to get dirty while trapsing through those dirty caverns!")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin002.mp3",2404713365,4157095705)
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
    Dialog.AddOption("I was headed back that way anyway. I'll return soon.", "BatsUpdate")
    Dialog.AddOption("MORE? Oh, fine. I will be back soon.", "BatsUpdate")
    Dialog.Start()
end   

 function BatsDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Grand! These will do nicely. Although they are a little dirty. I'm afraid I must knock a bit off your reward. Here is some silver for your efforts.")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin003.mp3",898503139,3029193032)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("The job is done. Good day.", "BatsFinish")
    Dialog.AddOption("...Fine. Give me the coin and we're done.", "BatsFinish")
    Dialog.Start()
end   

 function RatsStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You arrive at a good time, my friend. I could use a helping hand. I need a large quantity of mystail rat tails, but I cannot leave my wares alone at this stand. Will you collect the tails?")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin004.mp3",854405291,514627489)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("I will go collect mystrat tails for you.", "QuestStart1")
    Dialog.AddOption("I don't have time to kill rodents.")
    Dialog.Start()
end   



 function RatsDone(NPC, Spawn)
    SetStepComplete(Spawn, Rats, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good work! I knew I could count on you. Take this small reward for your services.")
	Dialog.AddVoiceover("voiceover/english/merchant_fevalin/qey_village04/merchantfevalin006.mp3",2345907266,804259931)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("Thank you.")
    Dialog.Start()
end   

function QuestStart1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Rats)
end

function QuestStart2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bats)
end

function BatsUpdate(NPC, Spawn)
    SetStepComplete(Spawn, Bats, 2)
end

function BatsFinish(NPC, Spawn)
    SetStepComplete(Spawn, Bats, 4)
end