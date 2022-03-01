--[[
	Script Name	: SpawnScripts/Castleview/Kruuprum.lua
	Script Purpose	: Kruuprum <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: 
--]]

local Bugs = 5461
local Daggers = 5462


function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, Bugs)
ProvidesQuest(NPC, Daggers)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Bugs) and not HasCompletedQuest (Spawn, Bugs) and GetLevel(Spawn) >=5 then 
        choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail3_f6fcb534.mp3", "Pray tell, wouldst thou be in possession of the flies? Ah ... I see ... then I shall wait to eat.", "", 1179465815, 2252444306, Spawn)
    	elseif choice ==2 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail2_9a6056e9.mp3", "'Tis a great day when one browses mine wares. Mine stomach grumbles, yet I have so much to do.", "", 3873091282, 3521185500, Spawn)    	 
        else
    	PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail6_d113a4a3.mp3", "'Twere I to not be so busy, such as thyself, I could do more.  Alas, I do not have the time to gander as one so gifted as thou.", "", 1535323046, 4151761005, Spawn)
        end
   
    elseif  HasCompletedQuest (Spawn, Bugs) and HasCompletedQuest (Spawn, Daggers) then
         choice = math.random(1,3)
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
    if GetLevel(Spawn) < 5 then
	FaceTarget(NPC, Spawn)
			PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail1_9d28d570.mp3", "Were I to possess the time to speak, 'twould be a gracious thing. I must continue selling mine items so I might catch a bite to eat. Mayhaps we can speak again.", "", 2901211010, 2505702223, Spawn)
 elseif   HasCompletedQuest (Spawn, Bugs) and  HasCompletedQuest (Spawn, Daggers) then
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_callout _7959ca4b.mp3", "Verily, 'tis fine to havest thou here in Castleview! FroooOOOooaak! Fevalin and I here hath set up a nice arrangement and canst offer thou the widest variety of Qeynosian goods! Come view our wares!", "", 19553490, 2117485462, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail1_9d28d570.mp3", "Were I to possess the time to speak, 'twould be a gracious thing. I must continue selling mine items so I might catch a bite to eat. Mayhaps we can speak again.", "", 2901211010, 2505702223, Spawn)
    	end

    elseif not HasCompletedQuest (Spawn, Bugs) or not HasCompletedQuest (Spawn, Daggers) then
            FaceTarget(NPC, Spawn)
                conversation = CreateConversation()   
            if not HasQuest(Spawn, Daggers) then       
                AddConversationOption(conversation, "You seem busy. Have any errands I can do?", "DaggerStart")
            end
            if not HasQuest(Spawn, Bugs) then       
                AddConversationOption(conversation, "I don't have any flies, but how can I help?", "BugStart")
            end
            if GetQuestStep(Spawn, Bugs)==2 then
	           AddConversationOption(conversation, "Here are some bugs for you to munch on.", "DoneBugs")
	        end
	        if GetQuestStep(Spawn, Daggers)==2 then
	           AddConversationOption(conversation, "I've returned with your bag of daggers.", "DoneDaggers")
	        end
	        
	           AddConversationOption(conversation, "I'm just browsing. Thank you.")
                PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum.mp3", "", "", 212021921, 86053123, Spawn)
	           StartConversation(conversation, NPC, Spawn, "Verily, 'tis fine to havest thou here in Castleview! FroooOOOooaak! Fevalin and I here hath set up a nice arrangement and canst offer thou the widest variety of Qeynosian goods! Come view our wares!")
	     
            end
end


 function DaggerStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll head that way!", "QuestBegin2")
    AddConversationOption(conversation, "Afraid I'm busy.")
    PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum003.mp3","","happy",3477024575,1591003971,Spawn)
    StartConversation(conversation, NPC, Spawn, "I can always use the aid of a refugee! Thou could do me a great service by venturing unto Snowboots Forge in Graystone Yard. Speak'th unto Ironmallet. He is holding a bag of sack of daggers for me. I have already paid for these items.")
end   

 function DoneDaggers(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm glad I could be of assistance.", "RewardDaggers")
    PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum004.mp3","","thank",3621130333,3514541630,Spawn)
    StartConversation(conversation, NPC, Spawn, "I thank thee. Here art a few coins for thy kind deed. And let me remind'st thou that Kruuprum's Imporium is the finest place to spend thy coin. No greater deals can be found!")
end   

 function BugStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Don't worry. I'll find you something to eat.", "BugJob")
    AddConversationOption(conversation, "Insects? I don't deal with creepy-crawlies. Sorry")
    PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum000.mp3","","sigh",1882625212,2001028992,Spawn)
    StartConversation(conversation, NPC, Spawn, "I'm too busy... I have not had the time to catch food in nearly three days! At this point I'd even accept already dead insects! You would not mind helping me out, would thou? I would be forever in thy debt! Well, at least until my belly is empty again...")
end   

 function BugJob(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll explore the Forest Ruins for some insects for you.", "QuestBegin1")
    AddConversationOption(conversation, "On second thought, I can't. Sorry.")
    PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum001.mp3","","confused",3403348691,1398407939,Spawn)
    StartConversation(conversation, NPC, Spawn, "Praise Marr! Thou would'st be so kind! The meaty part of any insect would rightly do. That should tide me for at least a few days. I would happily pay thee some coin upon thy return.")
end   

 function DoneBugs(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm sure these will tide you over. Take care.", "RewardBugs")
    AddConversationOption(conversation, "Thanks. Enjoy your meal!", "RewardBugs")
    PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/merchantkruuprum002.mp3","","shrug",820028520,4244455128,Spawn)
    StartConversation(conversation, NPC, Spawn, "I know what thou art thinking. This is certainly not a real meal, but it is better than starving. I just do not have enough time to step'th away from the tent and eat! As thou can see, I have two tents worth of merchandise to watch. Take these coins as payment for thy timely intervention!")
end   

function QuestBegin1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bugs)
end

function QuestBegin2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Daggers)
end

function RewardBugs(NPC, Spawn)
    SetStepComplete(Spawn, Bugs, 2)
end

function RewardDaggers(NPC, Spawn)
    SetStepComplete(Spawn, Daggers, 2)
end