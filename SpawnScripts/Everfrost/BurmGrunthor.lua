--[[
    Script Name    : SpawnScripts/Everfrost/BurmGrunthor.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.03 10:09:57
    Script Purpose : 
                   : 
--]]

local Fish_For_Grunther = 136

function spawn(NPC)
	ProvidesQuest(NPC, Fish_For_Grunther)
end

function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
        if GetLevel(Spawn) < 41 then
             UnderLevel_Chat(NPC, Spawn)
        else
   	     if HasQuest(Spawn, Fish_For_Grunther) == false and HasCompletedQuest(Spawn, Fish_For_Grunther) == false then
                  Quest1Chat_1(NPC, Spawn)
	     elseif GetQuestStep(Spawn, Fish_For_Grunther) == 1 then 
                  if HasCompletedQuest(Spawn, Fish_For_Grunther) == true then
                            Quest1Chat_3(NPC, Spawn)
                  else
                            Quest1Chat_7(NPC, Spawn)
                  end
             elseif GetQuestStep(Spawn, Fish_For_Grunther) == 2 then
                  if HasCompletedQuest(Spawn, Fish_For_Grunther) == true then
                            Quest1Chat_8(NPC, Spawn)
                  else 
                            Quest1Chat_5(NPC, Spawn)
                  end
	     elseif HasQuest(Spawn, Fish_For_Grunther) == false and HasCompletedQuest(Spawn, Fish_For_Grunther) == true then
                  Quest1Chat_4(NPC, Spawn)
	     end
        end
end	

function UnderLevel_Chat(NPC, Spawn)

    Say(NPC, "Just me and fishes out here sometimes. Just me and the fishes.")

end

function Quest1Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Oh?", "Quest1Chat_2")
    StartConversation(conversation, NPC, Spawn, "Arh! The fish just aren't biting!")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Perhaps I could fish some for you?", "Offer_Fish_For_Grunther")
        AddConversationOption(conversation, "Sounds like you should work on your fishing skills.")
	StartConversation(conversation, NPC, Spawn, "Nay, I've been at it for hours, but nuthin'. And I've mouths to feed...")
end


function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I do not.")
	StartConversation(conversation, NPC, Spawn, "Have ye the fish?")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I most certainly would.", "Offer_Fish_For_Grunther")
	AddConversationOption(conversation, "Nah, I've got better things to do with my time.")
	StartConversation(conversation, NPC, Spawn, "I could always use some'mere fish if ye'd be up fer it.")
end

function Quest1Chat_5(NPC, Spawn)
        SetStepComplete(Spawn, Fish_For_Grunther, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, here's all your fish." , "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "Is that the smell of fish on ye?")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I am glad to have helped.")
	StartConversation(conversation, NPC, Spawn, "Ahh, a fine batch if I've ever seen it. Thank ye.")
end


function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, must just be all the adventuring I've been doing...")
	StartConversation(conversation, NPC, Spawn, "Is that the smell of fish on ye?")
end

function Quest1Chat_8(NPC, Spawn)
        SetStepComplete(Spawn, Fish_For_Grunther, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I do." , "Quest1Chat_9")
	StartConversation(conversation, NPC, Spawn, "Have ye the fish?")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You are most welcome.")
	StartConversation(conversation, NPC, Spawn, "A blessing! Aye, I can call ye nay but a blessing.")
end

function Offer_Fish_For_Grunther(NPC, Spawn)
	if HasQuest(Spawn, Fish_For_Grunther) == false and HasCompletedQuest(Spawn, Fish_For_Grunther) == false then
	    OfferQuest(NPC, Spawn, Fish_For_Grunther)
	    FaceTarget(NPC, Spawn)
	    conversation = CreateConversation()

	    AddConversationOption(conversation, "Not to worry.")
	    StartConversation(conversation, NPC, Spawn, "That'd truly be a blessing from the gods, thank ye.")

        elseif HasQuest(Spawn, Fish_For_Grunther) == false and HasCompletedQuest(Spawn, Fish_For_Grunther) == true then
	    OfferQuest(NPC, Spawn, Fish_For_Grunther)
	    FaceTarget(NPC, Spawn)
	    conversation = CreateConversation()

	    AddConversationOption(conversation, "You're welcome.")
	    StartConversation(conversation, NPC, Spawn, "A fine young adventurer ye be, thank ye.")
	    
	end

end




