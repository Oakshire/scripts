--[[
	Script Name	: SpawnScripts/Castleview/BupipaGuryup.lua
	Script Purpose	: Bupipa Guryup 
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: 
--]]

local PickUp = 5454
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")



function spawn(NPC)
    if not HasCompletedQuest (Spawn, PickUp) and not HasQuest (Spawn, PickUp) then 
    SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
    else
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    end
ProvidesQuest(NPC, PickUp)
end

function InRange(NPC, Spawn) --Quest Callout

if math.random(1, 100) <= 50 then
    if not HasCompletedQuest (Spawn, PickUp) and not HasQuest (Spawn, PickUp) then 
        choice = math.random(1,2)
    FaceTarget(NPC, Spawn)
        if choice ==1 then
        		PlayFlavor(NPC, "", "Ahem... FROAK!  FROAK FROOOOAAAAKKK!", "cackle", 0, 0, Spawn)
    	else
    	PlayFlavor(NPC, "", "The bugs so sweet it brings a tear! FROAK!  FROAK FROOOOAAAAKKK!", "orate", 0, 0, Spawn)
    	 end
     else
         choice = math.random(1,3)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "", "The sounds of the swamp are sweet to hear! FROAK!  FROAK FROAK! ", "orate", 0, 0, Spawn)
        elseif choice ==2 then
		PlayFlavor(NPC, "", "Ahem... FROAK!  FROAK FROOOOAAAAKKK!", "orate", 0, 0, Spawn)
		else
		PlayFlavor(NPC, "", "The bugs so sweet it brings a tear! FROAK!  FROAK FROOOOAAAAKKK!", "orate", 0, 0, Spawn)
        end
    end
    end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasCompletedQuest (Spawn, PickUp) and not HasQuest (Spawn, PickUp) then 
    conversation = CreateConversation()
    PlayFlavor(NPC, "","","fullcurtsey",0,0,Spawn)
    AddConversationOption(conversation, "Do you need something?", "Voice")
    StartConversation(conversation, NPC, Spawn, "Graciously accept my pardon for I am a quite the bit busy. Mayhaps I couldst speak with thee anon?")
    
    elseif not HasCompletedQuest (Spawn, PickUp) and  HasQuest (Spawn, PickUp) then 
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
        if GetQuestStep (Spawn, PickUp) == 2 then
        AddConversationOption(conversation, "", "PickedUp")
        end
    PlayFlavor(NPC, "","","hello",0,0,Spawn)
    AddConversationOption(conversation, "I'm still heading that way.")
    StartConversation(conversation, NPC, Spawn, "Any word on my splended new device?")
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

 function Voice(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
    AddConversationOption(conversation, "You can't sing the same anymore?", "Sing")
    AddConversationOption(conversation, "Your froak doesn't bring all the boys to the terrace anymore?", "Sing")
  StartConversation(conversation, NPC, Spawn, "You see... my voice is not what it once was. I use to sing across our bog for the whole world to hear. Revelers flocked to my seranade!")
end   

 function Sing(NPC, Spawn)
              FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "","","no",0,0,Spawn)
  AddConversationOption(conversation, "How can I help?", "QuestAlmost")
  StartConversation(conversation, NPC, Spawn, "Unfortunately, no... but a gnome came to me the other day and offered a new device. An Amplificator! He promised it would allow the whole city to love my music! Ahhh, how I miss the flocking adulation.")
end   

 function QuestAlmost(NPC, Spawn)
              FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
  AddConversationOption(conversation, "I'll pick it up for you.", "QuestBegin")
  StartConversation(conversation, NPC, Spawn, "Why, yes! I've already paid for the new device... would you pick it up for me from Bizrinn Clamorclang in the Baubbleshire? I have the recipt for it right here.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, PickUp)
end

 function PickedUp(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Be sure to try it out!", "Reward")
    AddConversationOption(conversation, "Please, be mindful of the neighbors...", "Reward")
    AddConversationOption(conversation, "Oh, I'm sorry. This is the wrong device.")
        PlayFlavor(NPC, "","","confused",0,0,Spawn)
  StartConversation(conversation, NPC, Spawn, "Oh rapture... but... 'Assembly Required?' There are too many parts here to set it up completely right now! It will take some time... Thank you traveler! Please, take this small token as I prepare to try out the mouth piece.")
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

