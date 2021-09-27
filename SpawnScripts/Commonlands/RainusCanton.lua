--[[
    Script Name    : SpawnScripts/Commonlands/RainusCanton.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.27 12:02:54
    Script Purpose : 
                   : 
--]]
local OrcsAndGhosts = 400 -- Orcs and Ghosts Quest
local Rainus = 401 -- Rainus Quest
local QUEST = 402 -- The Frenzy of the Bloodskulls Quest
local QUEST2 = 403 -- Bloodskull Intention quest
local QUEST3 = 404 -- Bloodskull Disruption Quest
local QUEST4 = 405 -- Captain Feralis

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
if GetDeity(Spawn) ~= 1  then    
  if HasCompletedQuest(Spawn, Rainus) then
  ProvidesQuest(NPC, QUEST)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, QUEST) then
  ProvidesQuest(NPC, QUEST2)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, QUEST2) then
  ProvidesQuest(NPC, QUEST3)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, QUEST3) then
  ProvidesQuest(NPC, QUEST4)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
end
   end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
    else
     PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
    end
if GetDeity(Spawn) ~= 1  then
    if not HasQuest(Spawn, QUEST) and not HasCompletedQuest(Spawn, QUEST) then
    if GetQuestStep(Spawn, Rainus) == 1 then
    SetStepComplete(Spawn, Rainus, 1)
    end
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, " " .. GetName(Spawn) .. ", proudly enacting the will of the Overlord.", "Option1")
	AddConversationOption(conversation, " " .. GetName(Spawn) .. ", bound in service to none.", "Option1")
	AddConversationOption(conversation, " " .. GetName(Spawn) .. ", my loyalties remain private.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Rainus Canton, a once wandering sword now bound in service to the Overlord. And yourself?")
	elseif GetQuestStep(Spawn, QUEST) == 1 or GetQuestStep(Spawn, QUEST) == 2 or GetQuestStep(Spawn, QUEST) == 3 then
    progress0(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST) == 4 then
    progress1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST) and not HasCompletedQuest(Spawn, QUEST2) and not HasQuest(Spawn, QUEST2) then
    quest_complete1(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST2) == 1 or GetQuestStep(Spawn, QUEST2) == 2 then
    quest2_progress0(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST2) == 3 then
     quest2_progress1(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST3) == 1 or GetQuestStep(Spawn, QUEST3) == 2 or GetQuestStep(Spawn, QUEST3) == 3 or GetQuestStep(Spawn, QUEST3) == 4 then
     quest3_progress0(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST3) == 5 then
      quest3_progress1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, Rainus) and HasCompletedQuest(Spawn, QUEST) and HasCompletedQuest(Spawn, QUEST2) and not HasQuest(Spawn, QUEST3) and not HasCompletedQuest(Spawn, QUEST3) then
     Option9(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, Rainus) and HasCompletedQuest(Spawn, QUEST) and HasCompletedQuest(Spawn, QUEST2) and HasCompletedQuest(Spawn, QUEST3) and not HasQuest(Spawn, QUEST4) and not HasCompletedQuest(Spawn, QUEST4) then
     Option16(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, Rainus) and HasCompletedQuest(Spawn, QUEST) and HasCompletedQuest(Spawn, QUEST2) and HasCompletedQuest(Spawn, QUEST3) and HasQuest(Spawn, QUEST4) or HasCompletedQuest(Spawn, QUEST4) then
    PlayFlavor(NPC, "",  "Your help did not go unappreciated, but i have nothing more to ask of you.", "", 0, 0, Spawn)
    elseif not HasQuest(Spawn, Rainus) and not  HasCompletedQuest(Spawn, Rainus) then
    PlayFlavor(NPC, "", "Return when you're not so green", "hail", 0, 0, Spawn)
    end
elseif GetDeity(Spawn) == 1 then
   PlayFlavor(NPC, "", "You know, the Overlord might hang me for talking to you.", "", 0, 0, Spawn)
end
   end
 

function progress0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you done as I asked?")
end

function progress1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have, here are the root samples.", "quest_complete1")
	StartConversation(conversation, NPC, Spawn, "Have you done as I asked?")
end

function quest2_progress0(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you slay the orcs and get the orders?")
end

function quest2_progress1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I did. Here you go.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Did you slay the orcs and get the orders?")
end

function quest3_progress0(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll return when it's done.")
	StartConversation(conversation, NPC, Spawn, "The orcs?")
end


function quest3_progress1(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Taken care of.", "Option14")
	StartConversation(conversation, NPC, Spawn, "The orcs?")
end


function quest_complete1(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST) == 4 then
    SetStepComplete(Spawn, QUEST, 4)
    end
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You mentioned having more work for me.", "Option8")
	StartConversation(conversation, NPC, Spawn, "Good work, " .. GetName(Spawn) .. ". I'll get these to our alchemist for study.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "My business is my own.", "Option2")
	AddConversationOption(conversation, "No, I am not.", "Option2")
	AddConversationOption(conversation, "I am.", "Option3")
	StartConversation(conversation, NPC, Spawn, " " .. GetName(Spawn) .. ", indeed. Your name has graced the lips of many I have had the fortune--or misfortune--to listen to. It is a, ehm--a pleasure to meet you. Are you out here in the service of the Overlord as well?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "How?", "Option4")
	AddConversationOption(conversation, "Not today.")
	StartConversation(conversation, NPC, Spawn, "Well, that is why I am here, anyway. If you would care to help, then you may join me in earning his favor.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "How?", "Option4")
	AddConversationOption(conversation, "Not today.")
	StartConversation(conversation, NPC, Spawn, "Splendid. Perhaps you would care to join me in earning his favor.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And what are you doing?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Captain Feralis has been tasked with re-confirming the orc threat to Freeport. No, that doesn't mean we fear they could ever bring the city down, but even a gnat can annoy and pester. Feralis has asked me to help him, and I have agreed.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Reliance on a root?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Harassing the Bloodskulls, of course! And in doing so learning of their strengths and weaknesses. I've found them typical, so far. But one thing does stand out, their reliance on a thick root that grows around here.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do?", "Option7")
	StartConversation(conversation, NPC, Spawn, "Bloodskull Frenzy Root. The Bloodskull shamans provide their orcs with a solution that combines with the root to create an elixir that sends the orcs into a rage once they're in combat. All the tests we've run on the weed have so far turned up nothing and we've run out of samples. Care to lend a hand?")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "offer")
	StartConversation(conversation, NPC, Spawn, "Head west of here. Once you find the orcs, pay your respects to the Overlord: kill some of the Bloodskull warriors and priests. However, and this is the important part, I would also like some samples of the Frenzy Root. The shaman mixture we have, don't worry about that, but bring me at least five root samples.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.", "offer2")
	StartConversation(conversation, NPC, Spawn, "That's right. I believe the orcs in this region are acting without new orders, they seem to be somewhat stagnant, or at the very least slow. They either have an inept leader or an absent one. I'd like you to head to the ruined towers west of here. There are some Bloodskull tower guards, kill them and search the corpses for the standing orders for these Bloodskull orcs. I'd like to see what they're working toward, if anything.")
end


function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, QUEST2) then
	SetStepComplete(Spawn, QUEST2, 3)
	end
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What do the orders say?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Unfortunately we still don't have any word on the root.")
end
   


function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "...", "Option11")
	StartConversation(conversation, NPC, Spawn, "Give me a moment, the orcs aren't known for their grammar.")
end


function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What for?", "Option12")
	StartConversation(conversation, NPC, Spawn, "It looks like these are orders to build up a ''cha nu durk.'' Which is--I think--the minimum size of a orc fighting unit.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What?", "Option13")
	StartConversation(conversation, NPC, Spawn, "Carnage, no doubt. Orcs always wear their hearts upon their sleeves. The only thing a force that small would be useful for is routing civilians... Maybe a hit and run force for the Crossroads... ah hah!")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "A siege tower?", "offer3")
	StartConversation(conversation, NPC, Spawn, "I read the orcs as books. They've two camps south-west of the Crossroads, just south of the kerran and ratonga villages. The orcs of these two camps will likely make up the cha nu durk... Kill the orcs and destroy their supplies. If they have a siege tower, destroy it as well.")
end



function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    SetStepComplete(Spawn, QUEST3, 5)
	AddConversationOption(conversation, "What did you discover?", "Option15")
	StartConversation(conversation, NPC, Spawn, "Wonderful job, "..GetName(Spawn).." The orcs will be feeling this for a while. In theory we could harry them endlessly if their leader never returned. That would make an interesting study to return home with. Speaking of that, I got word back on the orc roots.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Perfect?", "Option16")
	StartConversation(conversation, NPC, Spawn, "That the orcs are more stupid than we thought. The elixir they create is triggered whenever the orc's adrenaline gets high enough. When this happens it actually eats away at the orc's brain! This damages the orc permanently. This is, of course, perfect.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.", "offer4")
	StartConversation(conversation, NPC, Spawn, "If it's good enough for one clan of orcs why not others? I'd like you to deliver some of these treated roots to Captain Feralis at the Crossroads for me.")
end


function offer4(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST4)
end


function offer3(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST3)
end




function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST2)
end

   

function offer(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST)
end

function respawn(NPC)
spawn(NPC)
end

