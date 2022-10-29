--[[
	Script Name	: SpawnScripts/Castleview/Kruuprum.lua
	Script Purpose	: Kruuprum <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local Bugs = 5461
local Daggers = 5462


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC, Bugs)
ProvidesQuest(NPC, Daggers)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 66 then
    if not HasCompletedQuest (Spawn, Bugs) and not HasCompletedQuest (Spawn, Bugs) and GetLevel(Spawn) >=5 then 
        choice = MakeRandomInt(1,3)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail3_f6fcb534.mp3", "Pray tell, wouldst thou be in possession of the flies? Ah ... I see ... then I shall wait to eat.", "nod", 1179465815, 2252444306, Spawn)
    	elseif choice ==2 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail2_9a6056e9.mp3", "'Tis a great day when one browses mine wares. Mine stomach grumbles, yet I have so much to do.", "hello", 3873091282, 3521185500, Spawn)    	 
        else
    	PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail6_d113a4a3.mp3", "'Twere I to not be so busy, such as thyself, I could do more.  Alas, I do not have the time to gander as one so gifted as thou.", "sigh", 1535323046, 4151761005, Spawn)
        end
   
    elseif  HasCompletedQuest (Spawn, Bugs) and HasCompletedQuest (Spawn, Daggers) then
         choice = MakeRandomInt(1,3)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_callout _7959ca4b.mp3", "Verily, 'tis fine to havest thou here in Castleview! FroooOOOooaak! Fevalin and I here hath set up a nice arrangement and canst offer thou the widest variety of Qeynosian goods! Come view our wares!", "", 19553490, 2117485462, Spawn)
        
        elseif choice ==2 then
        FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)
		else
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        end
    end
end
end




function hailed(NPC, Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        else      
    if GetLevel(Spawn) < 5 then
	FaceTarget(NPC, Spawn)
			PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail1_9d28d570.mp3", "Were I to possess the time to speak, 'twould be a gracious thing. I must continue selling mine items so I might catch a bite to eat. Mayhaps we can speak again.", "", 2901211010, 2505702223, Spawn)

    else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Verily, 'tis fine to havest thou here in Castleview!  FroooOOOooaak!  Fevalin and I here hath set up a nice arrangement and canst offer thou the widest variety of Qeynosian goods! Come view our wares!")
	Dialog.AddVoiceover("voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum.mp3",212021921, 86053123)
 	PlayFlavor(NPC, "", "", "hello", 0,0 , Spawn)
    if not HasQuest(Spawn, Daggers) then       
    Dialog.AddOption("Have any work for me?", "DaggerStart")
    end
    if not HasQuest(Spawn, Bugs) then       
    Dialog.AddOption("Wow, you must be busy!", "BugStart")
    end
    if GetQuestStep(Spawn, Bugs)==2 then
	Dialog.AddOption("Here are some insects for you to munch on.", "DoneBugs")
	end
	if GetQuestStep(Spawn, Daggers)==2 then
	Dialog.AddOption("I've returned with your bag of daggers from Graystone.", "DoneDaggers")
	end
	Dialog.AddOption("I'm just browsing. Thank you.")
    Dialog.Start()	     
    end
    end
end


 function DaggerStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can always use the aid of a refugee! Thou could do me a great service by venturing unto Snowboots Forge in Graystone Yard. Speak'th unto Ironmallet. He is holding a bag of sack of daggers for me. I have already paid for these items.")
	Dialog.AddVoiceover("voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum003.mp3",3477024575,1591003971)
 	PlayFlavor(NPC, "", "", "happy", 0,0 , Spawn)
    Dialog.AddOption("I will go get the daggers.", "QuestBegin2")
    Dialog.AddOption("Afraid I'm too busy right now.")
    Dialog.Start()
end   

 function DoneDaggers(NPC, Spawn)
    SetStepComplete(Spawn, Daggers, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I thank thee.  Here art a few coins for thy kind deed.  And let me remindest thou that Kuuprum's emporium is the finest place to spend thy coin.  No finer deal canst be found.")
	Dialog.AddVoiceover("voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum004.mp3",3621130333,3514541630)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("I will think about where to spend my coin.")
    Dialog.Start()
end   

 function BugStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, too busy ... I hath not had time to catch food in nearly three days.  At this point, I'd even accept already dead insects.  You wouldst not mind helping me out, would thou?  I would be forever in thy debt!  Or at least till mine belly is empty again. ")
	Dialog.AddVoiceover("voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum000.mp3",1882625212,2001028992)
 	PlayFlavor(NPC, "", "", "sigh", 0,0 , Spawn)
    Dialog.AddOption("I suppose I could get some for you ", "QuestBegin1")
    Dialog.AddOption("Insects? I don't deal with creepy-crawlies. Sorry")
    Dialog.Start()
end   

 function DoneBugs(NPC, Spawn)
    SetStepComplete(Spawn, Bugs, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I know what thou art thinking ... 'Tis certainly not a real meal, but it's better than starving!  I just do not hath enough time to stepeth away from the tent and eat.  As thou canst see, I hath got two tents worth of merchandise to watch.  Take these coins in payment for thine timely intervention!")
	Dialog.AddVoiceover("voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum002.mp3",820028520,4244455128)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("I'm sure these will tide you over. Take care.")
    Dialog.AddOption( "Thanks. Enjoy your meal!")
    Dialog.Start()

end   

function QuestBegin1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bugs)
end

function QuestBegin2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Daggers)
end

