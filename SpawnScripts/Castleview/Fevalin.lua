--[[
	Script Name	: SpawnScripts/Castleview/Fevalin.lua
	Script Purpose	: Fevalin <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Rats = 5464
local Bats = 5463


function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
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

            FaceTarget(NPC, Spawn)
                conversation = CreateConversation()   
                PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin.mp3", "", "bow", 2353063125, 3076810683, Spawn)
            if not HasQuest(Spawn, Rats) then       
                AddConversationOption(conversation, "Have any jobs I can do?", "RatsStart")
            end
            if not HasQuest(Spawn, Bats) and GetLevel(Spawn)>=6 then       
                AddConversationOption(conversation, "You and Kruuprum have a decent selection! Need any help?", "BatsStart")
            end
            if GetQuestStep(Spawn, Rats)==2 then
	           AddConversationOption(conversation, "Here are some bugs for you to munch on.", "RatsDone")
	        end
	        if GetQuestStep(Spawn, Bats)==2 then
	           AddConversationOption(conversation, "Here are your five albino pelts.", "BatsStep2")
	        end
	        if GetQuestStep(Spawn, Bats)==4 then
	           AddConversationOption(conversation, "Here are five MORE albino pelts.", "BatsDone")
	        end
	        
	           AddConversationOption(conversation, "I'm just browsing. Thank you.")
	           StartConversation(conversation, NPC, Spawn, "Welcome to my store. You'll notice merchant Kruuprum has setup shop next door. We've actually been working to provide you, the customer, a greater a varaity of wares.")
	          end



 function BatsStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "You mean... albino fur?", "BatsBegin")
    AddConversationOption(conversation, "Well, that's too bad. I must be going.")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin000.mp3","","agree",1928749418,2952011097,Spawn)
    StartConversation(conversation, NPC, Spawn, "Yes. Between the two of us, we stock everything a budding adventurer like you desires. Although unfortunately I've had no luck getting some quality bleached fur. ")
end   

 function BatsBegin(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll look for some albino furs for you.", "QuestStart2")
    AddConversationOption(conversation, "I don't do caves. Sorry")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin001.mp3","","agree",2715227809,2814889232,Spawn)
    StartConversation(conversation, NPC, Spawn, "Yes! That's precisely what I mean. You see, only one animal exists with fur fine enough for my needs. At least, a white animal. The albino bats in the caves near Baubbleshire have the softest coats I've laid my hands on. Now how about you run and fetch me some fur from these silky creatures? ")
end   

 function BatsStep2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I was headed back that way anyway. I'll return soon.", "BatsUpdate")
    AddConversationOption(conversation, "MORE? Oh, fine. I will be back soon.", "BatsUpdate")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin002.mp3","","ponder",2404713365,4157095705,Spawn)
    StartConversation(conversation, NPC, Spawn, "Oh... You know, I'm really sorry about this, but I'm going to have you go ahead and get me some more. That would be great. Now go along and get them. I'll go ahead and hold the ones you just brought me. I wouldn't want them to get dirty while trapsing through those dirty caverns!")
end   

 function BatsDone(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm sorry they weren't to your liking. Thanks anyway.", "BatsFinish")
    AddConversationOption(conversation, "...Fine. Give me the coin and we're done.", "BatsFinish")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin003.mp3","","Thank",898503139,3029193032,Spawn)
    StartConversation(conversation, NPC, Spawn, "Grand! These will do nicely. Although they are a little dirty. I'm afraid I must knock a bit off your reward. Here is some silver for your efforts.")
end   

 function RatsStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will go collect mystrat tails for you.", "RatsStart2")
    AddConversationOption(conversation, "I don't have time to kill rodents.")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin004.mp3","","",854405291,514627489,Spawn)
    StartConversation(conversation, NPC, Spawn, "You arrive at a good time, my friend. I could use a helping hand. I need a large quantity of mystail rat tails, but I cannot leave my wares alone at this stand. Will you collect the tails?")
end   

 function RatsStart2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm off to Oakmyst Forest!", "QuestBegin1")
    AddConversationOption(conversation, "On second thought, nevermind.")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin005.mp3","","agree",25404249,2050252222,Spawn)
    StartConversation(conversation, NPC, Spawn, "Thanks for pitching in. Every bundle of tails helps! You'll' find the mystail rats in Oakmyst Forest. Happy hunting!")
end   

 function RatsDone(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.", "RewardRats")
    PlayFlavor(NPC, "voiceover/english/merchant_fevalin/qey_village04/merchantfevalin006.mp3","","thank",2345907266,804259931,Spawn)
    StartConversation(conversation, NPC, Spawn, "Good work! I knew I could count on you. Take this small reward for your services.")
end   


function QuestBegin1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Rats)
end

function QuestStart2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bats)
end

function RewardRats(NPC, Spawn)
    SetStepComplete(Spawn, Rats, 2)
end

function BatsUpdate(NPC, Spawn)
    SetStepComplete(Spawn, Bats, 2)
end

function BatsFinish(NPC, Spawn)
    SetStepComplete(Spawn, Bats, 4)
end