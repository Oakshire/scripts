--[[
	Script Name	: SpawnScripts/Castleview/BupipaGuryup.lua
	Script Purpose	: Bupipa Guryup 
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: 
--]]

local PickUp = 5454
local Duet = 5471
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")



function spawn(NPC)
SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
ProvidesQuest(NPC, PickUp)
end

function InRange(NPC, Spawn) --Quest Callout
    if GetFactionAmount(Spawn,11) <0 then
         choice = math.random(1,2)
         if choice == 1 then
        		PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
        elseif choice == 2 then
         		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        end
    else    
if not HasCompletedQuest (Spawn, PickUp) and not HasQuest (Spawn, PickUp) then 
if math.random(1, 100) <= 70 then
 
        choice = math.random(1,3)
    FaceTarget(NPC, Spawn)
        if choice ==1 then
        		PlayFlavor(NPC, "", "Ahem... FROAK!  FROAK FROOOOAAAAKKK!", "cackle", 0, 0, Spawn)
        elseif choice ==2 then
	    PlayFlavor(NPC, "", "The sounds of the swamp are sweet to hear! FROAK!  FROAK FROAK! ", "orate", 0, 0, Spawn)
    	else
    	PlayFlavor(NPC, "", "The bugs so sweet it brings a tear! FROAK!  FROAK FROOOOAAAAKKK!", "orate", 0, 0, Spawn)
	    end
	 end
    end
end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
     if GetFactionAmount(Spawn,11) <0 then
        local  choice = math.random(1,2)
         if choice == 1 then
        		PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
        elseif choice == 2 then
         		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        end  
        else
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasCompletedQuest (Spawn, PickUp) and not HasQuest (Spawn, PickUp) then 
    conversation = CreateConversation()
    PlayFlavor(NPC, "","","fullcurtsey",0,0,Spawn)
    if GetQuestStep (Spawn, Duet) == 1 then
    AddConversationOption(conversation, "Kualdin Swoonsong over in Willow Wood is planning a concert in the future.  He wanted to know if you were interested.", "DuetOffer")
    end        
    AddConversationOption(conversation, "You sing quite beautifully.", "Voice")
    StartConversation(conversation, NPC, Spawn, "I must continue to practice mine songs, for one day I mayhaps be invited to sing before Antonia Bayle! Froooaak! Froak! Froak! FrooOOOOooaak!")
    
    elseif GetQuestStep (Spawn, Duet) == 1 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "","","ponder",0,0,Spawn)
    AddConversationOption(conversation, "Kualdin Swoonsong over in Willow Wood is planning a concert in the future.  He wanted to know if you were interested.", "DuetOffer")
    AddConversationOption(conversation, "I think I am going to find some place quieter than here.")
    StartConversation(conversation, NPC, Spawn, "You appear to have something for me?")
        
    elseif not HasCompletedQuest (Spawn, PickUp) and  HasQuest (Spawn, PickUp) then 
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
        if GetQuestStep (Spawn, PickUp) == 2 then
        AddConversationOption(conversation, "I brought you your device from Bizrinn.", "PickedUp")
        end
        if GetQuestStep (Spawn, Duet) == 1 then
        AddConversationOption(conversation, "Kualdin Swoonsong would like to invite you to be apart of his upcoming performance.", "DuetOffer")
        end
    PlayFlavor(NPC, "","","hello",0,0,Spawn)
    AddConversationOption(conversation, "I'm still heading that way.")
    StartConversation(conversation, NPC, Spawn, "I must continue to practice mine songs, for one day I mayhaps be invited to sing before Antonia Bayle! Froooaak! Froak! Froak! FrooOOOOooaak!")
    else
         choice = math.random(1,3)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "", "This amplificator did not come with a manual...", "sigh", 0, 0, Spawn)
        elseif choice ==2 then
		PlayFlavor(NPC, "", "I'm still trying to setup this fangled machine!", "frustrated", 0, 0, Spawn)
		else
		PlayFlavor(NPC, "", "Come to enjoy my moving ballads, have you?", "orate", 0, 0, Spawn)
        end
    end       
end


 function Voice(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
    AddConversationOption(conversation, "I should be able to do that for you.", "QuestBegin")
    AddConversationOption(conversation, "Perhaps another time then.")
    StartConversation(conversation, NPC, Spawn, "Why, thank you very much!  I couldst use thy help if thou art so willing.  I need an order picked up from some gnome tinkerers, but I really need to stay and practice.  Wouldst thou be so kind to get the item for me?")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, PickUp)
end

 function PickedUp(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Be sure to try it out!", "Reward")
    AddConversationOption(conversation, "Good, that gives me enough time to get to a good distance away.", "Reward")
    AddConversationOption(conversation, "Oh, I'm sorry. This is the wrong device.")
    PlayFlavor(NPC, "","","confused",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Bravo!  Here is thy payment I promised thee.  Hmm ... it lookest like it will take a while to set up.")
end   

 function DuetOffer(NPC, Spawn)
              FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
    AddConversationOption(conversation, "I think he means to have you be a duet partner at the concert where he is the featured attraction.", "Duet2")
  StartConversation(conversation, NPC, Spawn, "Huzzah!  A concert!  Of course I am interested!  I canst not believe he wouldst want to feature me.  He must be an admirer of mine voice.  Yea, 'tis a renowned sound, you know.")
end   

 function Duet2(NPC, Spawn)
              FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
    AddConversationOption(conversation, "I'll let him know.  Thanks.", "DuetAccept")
    AddConversationOption(conversation, "He really is full of himself, isn't he... I'll let him know you agree.", "DuetAccept")
  StartConversation(conversation, NPC, Spawn, "Oh.  Well ... I guess I am still interested... but I wisheth a solo!")
end   

function DuetAccept(NPC, Spawn)
    	SetStepComplete(Spawn, Duet, 1)
end
    	

function Tryout(NPC,Spawn)
 PlayFlavor(NPC, "","Ahem...","snicker",0,0,Spawn)
end

function Tryout2(NPC,Spawn)
Shout(NPC,"FRRROOOOOAK!....")
PlayFlavor(NPC, "","","cackle",0,0,Spawn)
end

function Tryout3(NPC,Spawn)
PlayFlavor(NPC, "","Oh... this is wonderful!","happy",0,0,Spawn)
end

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, PickUp, 2)
    	AddTimer(NPC,3000,"Tryout",1,Spawn)
    	AddTimer(NPC,5000,"Tryout2",1,Spawn)
    	AddTimer(NPC,8000,"Tryout3",1,Spawn)
    end

end

