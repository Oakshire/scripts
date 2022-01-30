--[[
	Script Name	: SpawnScripts/Castleview/Bleemeb.lua
	Script Purpose	: Bleemeb <Spell Scrolls>
	Script Author	: Dorbin
	Script Date	: 2022.01.29
	Script Notes	: No voice overs available, but dialog rebuilt.
--]]

--dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")


local Book = 5468
local Leaves = 5467


function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, Book)
ProvidesQuest(NPC, Leaves)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Book) and not HasCompletedQuest (Spawn, Leaves) and GetLevel(Spawn) then
        choice = math.random(1,2)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "", "","hello", 0, 0, Spawn)
    	elseif choice ==2 then
        PlayFlavor(NPC, "", "","wave", 0, 0, Spawn)
        end
    elseif  HasCompletedQuest (Spawn, Book) and HasCompletedQuest (Spawn, Leaves) then
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        end
    end
end




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()   
    
            if not HasQuest(Spawn, Book) then       
                AddConversationOption(conversation, "I'm not from around here. Anything I should know?", "BookStart")
            end
            if not HasQuest(Spawn, Leaves) then       
                AddConversationOption(conversation, "What is Yanari doing?", "LeavesStart")
            end
	         if GetQuestStep(Spawn, Book)==4 then
	           AddConversationOption(conversation, "Here is the book you wanted me to find. It was stored on the shelves at the inn.", "DoneBook")
	        end
	       if GetQuestStep(Spawn, Leaves)==2 then
	           AddConversationOption(conversation, "I've returned with the Eldarr leaves you asked for.", "DoneLeaves")
	        end
	        
	  AddConversationOption(conversation, "I'm just browsing. Thank you.")
	 StartConversation(conversation, NPC, Spawn, "If thou art interested... of items of a scholarly nature. Thou should take a look around. Just don't disturb Yanari! She is busy with her research.")
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1016.mp3", "", "", 0, 0, Spawn)
	        end



 function LeavesStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "That sounds impressive!", "LeavesStart2")
    AddConversationOption(conversation, "I'm busy. Sorry.")
    PlayFlavor(NPC, "","","happy",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Currently, she is trying to make her spells more potent. But soon, she will't be working on a spell to help the druids of the Eldarr Grove help grow their precious trees.")
end   

 function LeavesStart2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll go gather the leaves at the Eldarr Grove.", "QuestBegin2")
    AddConversationOption(conversation, "Leaves? I don't have time for this.")
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "It is, it is! FrroOAK! She needs someone to fetch some leaves from the base of the tallest Eldarr tree. Say! I figured thou would'st do nicely for that. Why doth thou head over to the Eldarr grove and pick her up some leaves. Thou'st can't miss the tree! It has elves in it.")
end   

 function DoneLeaves(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.", "RewardLeaves")
    PlayFlavor(NPC, "","","thank",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "By the valor of Marr! Tis quite a bundle of them thou has. I am sure they will do nicely for her. I'm in the habbit of paying for services, so please take these coins. frooAK!")
end   

 function BookStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Certainly, I will go get the book.", "QuestBegin1")
    AddConversationOption(conversation, "I can't right now. I appologize.")
    PlayFlavor(NPC, "","","bow",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Ahh, a newcomer! Tis grand to meet thee! I have a bit a bit of a task for thou. A resident named Faeadaen hath not returned our Book of Arobos. Privy, could'st thou retrive it from her?")
end   


 function DoneBook(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I appreciate it.", "RewardBook")
    PlayFlavor(NPC, "","","thank",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Many thanks unto thee! Here is a bit of coin. Spend it wisely!")
end   

function QuestBegin1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Book)
end

function QuestBegin2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Leaves)
end

function RewardLeaves(NPC, Spawn)
    SetStepComplete(Spawn, Leaves, 2)
end

function RewardBook(NPC, Spawn)
    SetStepComplete(Spawn, Book, 4)
end