--[[
    Script Name    : SpawnScripts/Commonlands/EngineerKlaaska.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.23 06:05:29
    Script Purpose : 
                   : 
--]]

local WheelOfVaniki = 5230


function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, WheelOfVaniki) == 3 then
	AddConversationOption(conversation, "The surveyor suggested I ask you about this.", "Option2")
	AddConversationOption(conversation, "My mistake.")
	StartConversation(conversation, NPC, Spawn, "Quick, then, or the winged ones will roast me alive for sure.  What is your question?")
	else
    if GetQuestStep(Spawn, WheelOfVaniki) == 10 then
    AddConversationOption(conversation, "I think I've repaired the Wheel of Vaniki.", "Option5")
    end
	AddConversationOption(conversation, "No problem.")
	StartConversation(conversation, NPC, Spawn, "I am terribly busy! Terribly busy!  Come later when I have time to talk!")

end
   end
   
   function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can do that.", "Option3")
	StartConversation(conversation, NPC, Spawn, "This is only one part of what we would consider the sacred Wheel of Vaniki! I cannot believe those upstarts destroyed the Wheel.  If I were not so busy with my work for our investors, I would teach them some respect! Perhaps you can help us by gathering together what we need to recreate the Wheel?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Where are all these things?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Excellent! First you shall need to locate the Sacred Bottle of Contentment and pour its contents into the Wheel, rotating thusly.  Next, you must find the Vial of Interaction and add that to the Wheel, aiming it to the cardinal points on the map.  Finally, you must take the wheel to the Ancient Alkaline Barrel and encrust the entire Wheel with the barrel's contents.  This last step is crucial!")
end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn, WheelOfVaniki, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay.  Guess I'm on my own.")
	StartConversation(conversation, NPC, Spawn, "If we knew that, we could have done this ourselves!  Some things the little ones took out of spite, as they did with the Wheel.  The barrel is too big for them; something else must have taken it.  You must take the Wheel with you, for it must be with you in order to be fully restored.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Savor it?", "Option6")
   	StartConversation(conversation, NPC, Spawn, "Let me see the Wheel!  Ooooh, you have indeed restored it!  We shall savor it soon, yes!")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You can't mean...", "Option7")
	StartConversation(conversation, NPC, Spawn, "For many years we have sought the device you found, which is the only container in which the Wheel of Vaniki can be made.  Your assistance has given us back the greatest delicacy of ancient times!")
end

function Option7(NPC, Spawn)
    if HasItem(Spawn, 14377) then
     RemoveItem(Spawn, 14377)
     end
     SetStepComplete(Spawn, WheelOfVaniki, 10)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can't believe I did all that work for ... cheese!")
	StartConversation(conversation, NPC, Spawn, "Legends have been told of the Wheel's power to make tasty cheese! All we had were the list of ingredients but no way to make it.  You have proven invaluable to our service!  We are very appreciative!")
end


	

function respawn(NPC)
	spawn(NPC)
end