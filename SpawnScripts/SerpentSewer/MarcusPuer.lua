--[[
    Script Name    : SpawnScripts/SerpentSewer/MarcusPuer.lua
    Script Author  : premierio015
    Script Date    : 2020.06.16 01:06:52
    Script Purpose : 
                   : 
--]]

local FreshSamples = 5265
local AGiftFromTheSerpentsMouth = 5273





function spawn(NPC)
 SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
 ProvidesQuest(NPC, FreshSamples)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, FreshSamples) and GetQuestCompleteCount(Spawn, FreshSamples) == 0 or GetQuestStep(Spawn, AGiftFromTheSerpentsMouth) >= 2  then
    PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer001.mp3", "", "", 3945654346, 2381958681, Spawn)
    local conversation = CreateConversation()
    if  GetQuestStep(Spawn, AGiftFromTheSerpentsMouth) == 1 then
    AddConversationOption(conversation, "I have a fang from the serpent Stench.", "Option2")
    elseif GetQuestCompleteCount(Spawn, FreshSamples) == 0 then
	AddConversationOption(conversation, "Then why do you do your work down here? ", "Option1")
	elseif GetQuestStep(Spawn, AGiftFromTheSerpentsMouth) == 5 then
	AddConversationOption(conversation, "I thought I was helping you.  I have the items you need for the fang.", "Option4")
	end
	AddConversationOption(conversation, "Sorry I asked. ")
	StartConversation(conversation, NPC, Spawn, "It's difficult enough trying to do my work down here.  Must you bother me as well?")
	elseif GetQuestStep(Spawn, FreshSamples) == 1 then
	QuestProgress(NPC, Spawn)
	elseif GetQuestStep(Spawn, FreshSamples) == 2 then
	QuestFinish(NPC, Spawn)
	elseif not HasQuest(Spawn, FreshSamples) and GetQuestCompleteCount(Spawn, FreshSamples) <= 5 then
	    if GetQuestCompleteCount(Spawn, FreshSamples) > 0 then
	    continue(NPC, Spawn)
	    end
end
   end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer005.mp3", "", "", 1900057881, 242605270, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What is it you need? ", "offer")
	AddConversationOption(conversation, "I'm not offering anything. ")
	StartConversation(conversation, NPC, Spawn, "Because my specimens need to be fresh, of course! Between my research and solution mixology, I've no time to get fresh specimens.  Ah I see, so this is why you've interrupted me, to offer your aid.  How awfully thoughtful!  You're not like the others, but they won't be interrupting me any more.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, FreshSamples)
end



function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer003.mp3", "", "", 1622376020, 1625303921, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right, okay.")
	
	StartConversation(conversation, NPC, Spawn, "I just can't complete my studies unless you return with the key materials.")
end

function QuestFinish(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer011.mp3", "", "", 2331598292, 1508009067, Spawn)
  	local conversation = CreateConversation()
  	    if GetQuestCompleteCount(Spawn, FreshSamples) <= 5 then
    	AddConversationOption(conversation, "Anything else you need?", "continue")
    	end
    	if GetQuestStep(Spawn, AGiftFromTheSerpentsMouth) == 1 then
    AddConversationOption(conversation, "I have a fang from the serpent Stench.", "Option2")
       end
    	AddConversationOption(conversation, "Thanks")
    	StartConversation(conversation, NPC, Spawn, "Splendid! It would've taken me days to collect these amounts.  Not to mention the time lost documenting the last study group.  Here, here take these; they're of my own design.  They may prove useful some day.")
end   	
 

function continue(NPC, Spawn)
      FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()    
	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer002.mp3", "", "", 182637408, 2140196654, Spawn)
AddConversationOption(conversation, "Sure how can I help this time? ", "offer")
AddConversationOption(conversation, "No, not this time. ")
StartConversation(conversation, NPC, Spawn, "Oh well, hello!  Back to help some more?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer008.mp3", "", "", 3172594915, 1628794700, Spawn)
	AddConversationOption(conversation, "I can get those things for you.", "Option3")
	AddConversationOption(conversation, "I don't want to bother with that.  ")
	StartConversation(conversation, NPC, Spawn, "Ah, isn't that a beauty.  I bet I could fashion that into a nasty poker with the right materials.  I'd be willing to do that for you since you helped me out earlier.  I  just need a few things found in the area.")
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, AGiftFromTheSerpentsMouth, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer009.mp3", "", "", 665960402, 251602403, Spawn)
	AddConversationOption(conversation, "I'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "All right, here is a list of things to collect.  You can find all of them down here in the Serpent Sewer.  Come back to me when you have all the materials.")
end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn, AGiftFromTheSerpentsMouth, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "marcus_puer/fprt_sewer02/marcuspuer010.mp3", "", "", 728428829, 741170065, Spawn)
	AddConversationOption(conversation, "Not too shabby. ")
	StartConversation(conversation, NPC, Spawn, "Ah, these things will do nicely.  Now just give me a minute as I create the paste... now to attach the handle... and add the scale grips... done!  Now that's a fine looking rapier if you ask me!")
end



 
 
function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/quests/020_quest_marcus_puer_aoicallout02_1f18e638.mp3", "Just who I was looking for!  Come here, come here!", "", 2970554527, 4254211908, Spawn)
end



function LeaveRange(NPC, Spawn)

end

