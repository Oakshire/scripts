--[[
	Script Name	: SpawnScripts/Graystone/DaneSteelfist.lua
	Script Purpose	: Dane Steelfist 
	Script Author	: Dorbin
	Script Date	: 2022.03.10
	Script Notes	:
--]]

dofile("SpawnScripts/Generic/UnknownLanguage.lua")
local DanesQuest = 5506

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
	ProvidesQuest(NPC, DanesQuest)
end

function InRange(NPC, Spawn) --Quest Callout
    if math.random(1, 100) <= 70 then
        if not HasLanguage(Spawn,3)then
        FaceTarget(NPC, Spawn)     
        Garbled(NPC,Spawn)
    else
        choice = math.random(1,2)
        if choice ==1 then
            PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn)
            end    
        end   
    end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        if not HasLanguage(Spawn,3)then
            Garbled(NPC,Spawn)
        else	
            conversation = CreateConversation()
            PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist000.mp3","","chuckle",1318075638,1771466130,Spawn)
	        
	        if not HasCompletedQuest (Spawn, DanesQuest) and not HasQuest (Spawn, DanesQuest) then            
            AddConversationOption(conversation, "You seem busy here. Need any help?", "Quest1")
            end
            
            if GetQuestStep (Spawn, DanesQuest)== 2 then            
            AddConversationOption(conversation, "Here are those badger parts you requested.", "Badger1")
            end
            
            if GetQuestStep (Spawn, DanesQuest)== 4 then            
            AddConversationOption(conversation, "I've killed the grizzled badgers like you wanted.", "Badger2")
            end            
            
            if GetQuestStep (Spawn, DanesQuest)== 6 then            
            AddConversationOption(conversation, "There are now less timber wolves in Antonica.", "Wolves1")
            end       
            
            AddConversationOption(conversation, "I'll leave you to it.")
            StartConversation(conversation, NPC, Spawn, "Haha!  Hilarious!  You better stand back.  Looks like the lad bit off more than he can chew. Don't worry.  The ol' barbarian there is a softy.  He let the wee one blow off a bit of steam first.  I love this city!")
            
        end
end        


 function Quest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist002.mp3","","ponder",3810575167,4164364374,Spawn)
  AddConversationOption(conversation, "What do you need?", "QuestBegin1")
  AddConversationOption(conversation, "On second thought, I must be going.")
  StartConversation(conversation, NPC, Spawn, "Busy?  I'm not busy!  Well, mabye a little busy.  Okay, I'm swamped with a new position I agreed to take! There's even a book I'm suppose to read for my job!  Imagine! I suppose I should run home and read the darn thing. Can you help me out?  I need to get some stuff to finish a repair.")
end   

 function QuestBegin1(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist003.mp3","","agree",3255837441,1786747362,Spawn)
  AddConversationOption(conversation, "I'll get those badgers for you.", "QuestBegin")
  AddConversationOption(conversation, "Nevermind, I must be going.")
  StartConversation(conversation, NPC, Spawn, "Great! I see you're keep'n a journal. Jot this down. 'Thin out the lowland badgers'. Appreciate your help! Come on back when you're done.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, DanesQuest)
end

 function Badger1(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist004.mp3","","happy",2037959888,2353530376,Spawn)
  AddConversationOption(conversation, "Still need some help to make the time?", "QuestUpdate1")
  StartConversation(conversation, NPC, Spawn, "Wonderful! Now I can finish my project.  You're saving me a lot of time, friend.  Look at my job book. It says here, 'Fill out form B according to rule five found in appendix C'.  Where is appendix C?!  Uugh, I need more time to learn my new job.")
end 

 function QuestUpdate1(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist005.mp3","","agree",2121116768,3344330588,Spawn)
  AddConversationOption(conversation, "I suppose I could take care of these grizzled badgers.", "QuestUpdate2")
  StartConversation(conversation, NPC, Spawn, "You know, this morning I was asked to clear out some grizzled badgers gett'n in the way of new construction. Nasty little black critters they are. I will be ever in your debt if you help me.")
end   

function QuestUpdate2(NPC, Spawn)
    	SetStepComplete(Spawn, DanesQuest, 2)
    end
    
 function Badger2(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist006.mp3","","happy",2321830335,3176079398,Spawn)
  AddConversationOption(conversation, "What else do you need?", "BadgerUpdate2")
  AddConversationOption(conversation, "More? What is it?", "BadgerUpdate2")  
  StartConversation(conversation, NPC, Spawn, "Good. Good! I think I understand my new job a bit better.  All this bureaucracy... I need to put my official stamp on the-  Gah!  I don't have an official stamp!  Why don't people tell me these things!  No rest for the weary.  Say, do you have time to do me a favor while I find someone to craft a seal?")
end     

 function BadgerUpdate2(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist007.mp3","","thank",2156174393,4161330007,Spawn)
  AddConversationOption(conversation, "Alright. I'll let you know when the deed is done.", "QuestUpdate4")
  StartConversation(conversation, NPC, Spawn, "Thank ya.  One of my first offical duties is to take a tour of the area.  And I've ... one... little... weakness... I'm scared of wolves, especially timber wolves. If you can help me out, I'll never forget it.")
end   

function QuestUpdate4(NPC, Spawn)
    	SetStepComplete(Spawn, DanesQuest, 4)
    end

 function Wolves1(NPC, Spawn)
    FaceTarget(NPC, Spawn)     
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/dane_steelfist/qey_village03/danesteelfist008.mp3","","nod",1137915375,2696390060,Spawn)
  AddConversationOption(conversation, "Glad to be of service.", "QuestDone")
  StartConversation(conversation, NPC, Spawn, "Very good. Very good!  I've got my stamp, see?  You've been a big help.  If ya ever need anything, just ask my assistant.  And make sure you fill out your form in triplicate! ")
end    

function QuestDone(NPC, Spawn)
    	SetStepComplete(Spawn, DanesQuest, 6)
    end