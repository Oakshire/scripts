--[[
    Script Name    : SpawnScripts/Commonlands/TeceraValnos.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 09:05:26
    Script Purpose : 
    Script Notes   :  Added movement
--]]

QUEST = 414 -- Tesera Valnos Quest
QUEST2 = 415 -- Broken Equipment Quest
QUEST3 = 413 --  The Bloodskull Threat Quest
QUEST4 = 5221 --  Returning to Captain Feralis(Final Quest)

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")    
MovementLoopAddLocation(NPC, 563.48, -42.51, 696.01, 2, 10)
MovementLoopAddLocation(NPC, 589.12, -47.48, 686.90, 2, 10)
MovementLoopAddLocation(NPC, 573.82, -43.50, 682.51, 2, 10)
MovementLoopAddLocation(NPC, 573.94, -43.60, 683.56, 2, 10)
MovementLoopAddLocation(NPC, 566.29, -42.44, 688.84, 2, 10)
MovementLoopAddLocation(NPC, 582.57, -46.43, 692.85, 2, 10)
MovementLoopAddLocation(NPC, 575.42, -46.81, 717.76, 2, 10)
MovementLoopAddLocation(NPC, 577.93, -47.27, 719.13, 2, 10)
MovementLoopAddLocation(NPC, 580.85, -45.08, 684.22, 2, 10)
MovementLoopAddLocation(NPC, 570.90, -46.07, 717.06, 2, 10)
MovementLoopAddLocation(NPC, 577.86, -45.04, 691.07, 2, 10)
end


function InRange(NPC, Spawn)
if GetDeity(Spawn) ~= 1  then    
if not HasCompletedQuest(Spawn, QUEST) then
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
	if HasQuest(Spawn, QUEST) or HasCompletedQuest(Spawn, QUEST) and not HasQuest(Spawn, QUEST2) and not HasCompletedQuest(Spawn, QUEST2) and not HasCompletedQuest(Spawn, QUEST3) and not HasCompletedQuest(Spawn, QUEST4) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am "..GetName(Spawn)..". Feralis sent me to offer my help.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Make it quick, I am quite busy.")
	elseif GetQuestStep(Spawn, QUEST2) < 8 and not HasCompletedQuest(Spawn, QUEST2) then
	QUEST2_PROGRESS(NPC, Spawn)
	elseif GetQuestStep(Spawn, QUEST2) == 8 or HasCompletedQuest(Spawn, QUEST2) and not HasQuest(Spawn, QUEST3) and not HasCompletedQuest(Spawn, QUEST3)  then
	QUEST2_FINISH(NPC, Spawn)
	elseif GetQuestStep(Spawn, QUEST3) < 5 and not HasCompletedQuest(Spawn, QUEST3) then
	QUEST3_PROGRESS(NPC, Spawn)
	elseif GetQuestStep(Spawn, QUEST3) == 5 or  HasCompletedQuest(Spawn, QUEST3) and not HasQuest(Spawn, QUEST4) and not HasCompletedQuest(Spawn, QUEST4) then
	QUEST3_FINISH(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, QUEST) and HasCompletedQuest(Spawn, QUEST2) and HasCompletedQuest(Spawn, QUEST3) and HasQuest(Spawn, QUEST4) or HasCompletedQuest(Spawn, QUEST4) then
	PlayFlavor(NPC, "", "Thank you, friend.", "salute", 0, 0, Spawn)
	elseif not HasQuest(Spawn, QUEST) and  not HasCompletedQuest(Spawn, QUEST) and not HasQuest(Spawn, QUEST2) and not  HasCompletedQuest(Spawn, QUEST2) and not HasQuest(Spawn, QUEST3) and not  HasCompletedQuest(Spawn, QUEST3) and not HasQuest(Spawn, QUEST4) and not  HasCompletedQuest(Spawn, QUEST4) then
	PlayFlavor(NPC, "", "Talk to me later. once you've got your priorities sorted out.", "", 0, 0, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, QUEST) then
	SetStepComplete(Spawn, QUEST, 1)
	end
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What business?", "Option2")
	StartConversation(conversation, NPC, Spawn, "It's about time he sent help. I've nearly lost the band of Bloodskulls I'm tracking and now this business with the Ruins of Val'marr.")
end
    

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Why?", "Option3")
	StartConversation(conversation, NPC, Spawn, "We got new orders a while back. We were to keep a close watch on the undead north of here. So we started to watch. So far... nothing, yet we continue to waste resources.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What can I do to help?", "Option4")
	StartConversation(conversation, NPC, Spawn, "It is not our job to question our orders, only to follow them. In dealing with these undead we set up some arcanic sentries about the ruins. Now those have been disabled and we're left with far less than what we started with. Meanwhile I'm working hard to keep my scouts on top of the Bloodskulls we had been tracking before. Needless to say things are hectic around here.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How can they be repaired?", "Option5")
	StartConversation(conversation, NPC, Spawn, "That's what I like to hear! We need the arcanic sentries back in action. The undead are too stupid to have taken them out--perhaps that's why our superiors are so interested in this area. The sentries are equipped with rudimentary magic that can conceal their location from future attacks, however. Before that will work they need to be repaired.")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How many sentries are there?", "Option6")
	StartConversation(conversation, NPC, Spawn, "We've got supplies cached in the houses south of the ruins. Some of those crates will contain essence injectors. You only need one. Once you have one, head into the ruins. The undead that are destroyed rot into undeath... and that can be reaped. Collect an essence of undeath from one of the fallen undead and use it with the injector to repair one of the sentries. After that collect another essence and repair the next one.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes.", "offer")
	StartConversation(conversation, NPC, Spawn, "There are six: two above the road that runs east and west, and four below it. They are all on the outskirts of the ruins. Think you can do it?")
end

function Option8(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST2) == 8 then
    SetStepComplete(Spawn, QUEST2, 8)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Great work! This is going to save us a lot of scouting time. Thank you, Ighi.")

end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Strange research?", "Option10")
	StartConversation(conversation, NPC, Spawn, "We got another lucky break. Our scouts report that the Bloodskulls we had been following have settled down and are doing some strange research.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What else do you want me to do?", "Option11")
	StartConversation(conversation, NPC, Spawn, "Something having to do with the ghostly treants they've set up camp near. They're orcs so I doubt it's very advanced... still, I would like you to get rid of some of the shamans doing the research. The less the orcs have to work with the better off we are.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Where is the camp?", "Option12")
	StartConversation(conversation, NPC, Spawn, "They have two leaders: Vurog Ma'gar and Jyrok the Stone. Take them out. Then find Arnisu Tobian. He is posing as their prisoner. Get his report on their studies and bring it back to me. This strike will be enough for our needs, but will not force the Bloodskulls into an action we won't be ready to deal with.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right, I'll go do it.", "offer2")
	StartConversation(conversation, NPC, Spawn, "From the southern most branch of the river it is south. There will be a small path leading into the mountainous area. That path will lead to their camp. It is on the southern edge of the Commonlands, east of the entrance to Bloodskull Valley.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What does the report tell you?", "Option14")
	StartConversation(conversation, NPC, Spawn, "Great! Finally things are coming under control. You've done a lot for us, "..GetName(Spawn)..", thank you.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What does that mean?", "Option15")
	StartConversation(conversation, NPC, Spawn, "Hmm... orcs raising the dead. Perhaps this is the missing bit of information that connects the Bloodskulls to the Shin'Ree.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ok.", "offer3")
	StartConversation(conversation, NPC, Spawn, "At this point you're better off not knowing. If you are needed you will be called upon. For now, I would return to Feralis if I were you. I'm sure he'll want to thank you personally.")
end






function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST2)
end

function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST3)
end


function offer3(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST4)
end


function QUEST2_PROGRESS(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Are the sentries repaired?")
end

function QUEST2_FINISH(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, they are all working and hidden.", "Option8")
	StartConversation(conversation, NPC, Spawn, "Are the sentries repaired?")
end

function QUEST3_PROGRESS(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you done it all?")
end


function QUEST3_FINISH(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST3) == 5 then
    SetStepComplete(Spawn, QUEST3, 5)
    end
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I have. Here is Arnisu's report.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Have you done it all?")
end
  



function respawn(NPC)
	spawn(NPC)
end