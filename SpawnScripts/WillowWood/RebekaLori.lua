--[[
	Script Name	: SpawnScripts/WillowWood/RebekaLori.lua
	Script Purpose	: Rebeka Lori
	Script Author	: Dorbin
	Script Date	: 2022.02.19
	Script Notes	: 
--]]

local Memorial = 5481

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange") 
ProvidesQuest(NPC, Memorial)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)

	if not HasCompletedQuest(Spawn,Memorial) then
	        if math.random(1, 100) <= 80 then
	        FaceTarget(NPC, Spawn)
	        local choice = math.random(1, 2)
	        if choice == 1 then
		    PlayFlavor(NPC, "voiceover/english/rebeka_lori/qey_village05/100_rebeka_lori_multhail1_ad61d9f4.mp3", "Ah, you seem very busy. Be at peace, dear stranger.", "", 2793985562, 1185191528, Spawn)

	        elseif choice == 2 then
		    PlayFlavor(NPC, "voiceover/english/rebeka_lori/qey_village05/100_rebeka_lori_callout_83c7c1f9.mp3", "Another face I do not recognize. Are you new here, good traveler?", "hello", 1155092333, 1712021877, Spawn)
            end
        end
        else
            if math.random(1, 100) <= 60 then
    	    PlayFlavor(NPC, "", "", "hello", 2685665398, 3421389957, Spawn)
            end
	end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/rebeka_lori/qey_village05/rebekalori000.mp3", "", "hello", 4100326689, 1939729337, Spawn)
    if not HasQuest(Spawn, Memorial) and not HasCompletedQuest(Spawn, Memorial) then
    AddConversationOption(conversation, "I guess I am doing as well as could be expected.", "GoingWell")
    end
    if HasCompletedQuest(Spawn, Memorial)then 
    AddConversationOption(conversation, "Just fine. Thank you.")
    end
    AddConversationOption(conversation, "Leave me alone.")
  StartConversation(conversation, NPC, Spawn, "Good day to you, stranger.  I hope you're doing well in these most interesting of times.")
end 

 function GoingWell(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/rebeka_lori/qey_village05/rebekalori001.mp3", "", "", 2771148292, 1641607590, Spawn)
  AddConversationOption(conversation, "I think I would like to see this memorial.", "QuestBegin")
  AddConversationOption(conversation, "Perhaps someday. Good day to you.")  
  StartConversation(conversation, NPC, Spawn, "That's good to hear.  It heartens me to see so many people arriving safely within the gates of Qeynos.  Perhaps one day my dear cousins will make it through, and I shall embrace them again.  I never lose hope.  Some people have given up hope of ever reuniting with their loved ones and have built a memorial in this village.")
end

 function QuestBegin(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/rebeka_lori/qey_village05/rebekalori002.mp3", "", "agree", 3672449477, 161797106, Spawn)
  AddConversationOption(conversation, "I'll head that way. Thank you for the information.", "QuestStart")
  StartConversation(conversation, NPC, Spawn, "The memorial is near the tunnel to the docks.  All visitors are welcome there. And if you go ... please respect the feelings of those who have left items at the memorial.  They are struggling through a crisis. ")
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Memorial)
end
