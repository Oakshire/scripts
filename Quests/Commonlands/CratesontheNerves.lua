--[[
    Script Name    : Quests/Commonlands/CratesontheNerves.lua
    Script Author  : premierio015
    Script Date    : 2018.12.30 10:12:22
    Script Purpose : 

        Zone       : Commonlands
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather embers from moon wisps around the Ulteran Spires", 10, 50, "Tiff has sent me off to get more wisp embers so that she can make more of the tracking powder.", 11, 330163)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end


function Step1Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 1, "I have the moon wisp embers for Tiff.")
    	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to get the necessary wisp embers for Tiff.")
    	AddQuestStepChat(Quest, 2, "I should return to Tiff", 1, "Tiff has sent me off to get more wisp embers so that she can make more of the tracking powder.", 11, 330213)
    	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
         UpdateQuestStepDescription(Quest, 2, "I returned to Tiff.")
         	
    
    	AddQuestStep(Quest, 3, "I should sprinkle empty smuggling crates with tracking powder", 2, 100, "I am to return to the smuggler's outpost and sprinkle the empty crates with tracking powder.", 11)
    	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
        	UpdateQuestStepDescription(Quest, 3, "I found several empty crates to use the tracking powder on.")	
        	UpdateQuestTaskGroupDescription(Quest, 2, "After using the magical powder on several smuggling crates, we can now track their movement.")
        	
        	AddQuestStepChat(Quest, 4, "I should return to Tiff", 1, "I am to return to the smuggler's outpost and sprinkle the empty crates with tracking powder.", 11, 330213)
        	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
        UpdateQuestStepDescription(Quest, 4, "I told Tiff of my success.")
         	AddQuestStepLocation(Quest, 5, "I should try to find the crates west of the ratonga village", 30, "Use the map to follow the crates, and watch where the scroll ends up.", 11, -80, -47, 12)
         	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
         	GiveQuestItem(Quest, Player, "After using the magical powder on several smuggling crates, we can now track their movement.", 2141)
end


function Step5Complete(Quest, QuestGiver, Player)
            UpdateQuestStepDescription(Quest, 5, "I found the location, but the crates are no longer here.")
       
         	AddQuestStepLocation(Quest, 6, "I should try to find the crates at the bridge south of the kerran village", 30 , "Use the map to follow the crates, and watch where the scroll ends up.", 11,  -155,  -46, 220)
         	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end


function Step6Complete(Quest, QuestGiver, Player)
       UpdateQuestStepDescription(Quest, 6, "I found the location, but the crates are no longer here.")
    
       	AddQuestStepLocation(Quest, 7, "I should try to find the crates near the druid ring", 30, "Use the map to follow the crates, and watch where the scroll ends up.", 11, 654, -60, -86)
       	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
        UpdateQuestStepDescription(Quest, 7, "I found the location, but the crates are no longer here.")
    
    	AddQuestStepLocation(Quest, 8, "I should try to find the crates on the road leading north from the Hidden Canyon Station", 30, "Use the map to follow the crates, and watch where the scroll ends up.", 11, 598, -50, 536)
        AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 8, "I found the location, but the crates are no longer here.")
    
    AddQuestStepLocation(Quest, 9, "I should try to find the crates along the Path of Tears", 30, "Use the map to follow the crates, and watch where the scroll ends up.", 11, 1097, -39, -359)
    AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 9, "I found the location, but the crates are no longer here.")
    
     AddQuestStep(Quest, 10, "The map now shows that the crates were moved west into the Yapping Maze", 30, "Use the map to follow the crates, and watch where the scroll ends up.", 11)
      AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
      
end       


function Step10Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 10, "I inspected the crates and found they contain ore and gems.")
    	UpdateQuestTaskGroupDescription(Quest, 3, "The crates were being filled with ore and gems by Thexian excavators near Fallen Gate, and the scroll is in Longshadow Alley.")
    	
    		AddQuestStepChat(Quest, 11, "I should report my findings to Tiff", 1, "Now that I know what the crates contained, and where the scroll is, I need to return to Tiff Squeelunkle.", 11, 330213)
    		 AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end


function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I told Tiff all I knew.")
		UpdateQuestTaskGroupDescription(Quest, 4, "Tiff was intrigued by the contents of the crates, and the last location of the scroll.")
		
			AddQuestStep(Quest, 12, "I should return to the smuggler's outpost and investigate the crates", 1, 100, "I seem to have volunteered to go back to the smuggler's outpost to investigate the crates that have returned there.", 11)
		    AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
            	UpdateQuestStepDescription(Quest, 12, "I overheard more useful facts about the smuggler's activities.")
          
         	AddQuestStepChat(Quest, 13, "Now that I know the gems and ore are being sold by the smugglers I should return to Tiff", 1, "I seem to have volunteered to go back to the smuggler's outpost to investigate the crates that have returned there.", 11)
           AddQuestStepCompleteAction(Quest, 13, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
        UpdateQuestStepDescription(Quest, 13, "	I spoke again, with Tiff.")
        UpdateQuestTaskGroupDescription(Quest, 5, "Tiff was very interested in the Thexian connection with the Blackshield Smugglers' growth.")
    
     	UpdateQuestDescription(Quest, "Tiff was very interested in the Thexian connection with the Blackshield Smugglers' growth.")
     	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
		elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)	
		elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
		elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
			elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
			elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
			elseif Step == 11 then
		Step11Complete(Quest, QuestGiver, Player)
		elseif Step == 12 then
		 Step12Complete(Quest, QuestGiver, Player)   
		 elseif Step == 13 then
		  quest_complete(Quest, QuestGiver, Player)      
	end
end




