--[[
    Script Name    : Quests/Hallmark/welcome_to_freeport__longshadow_alley.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.21 06:06:05
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
 require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "Use the room door to be given your inn room.  Click on the \"Buy\" button to get your room.  Once you have purchased your room click on \"Enter\" to enter your room.", 10, "I've been instructed to sign in at the inn's guest registry in order to get the key to my room.", 11,-5.63, 0.75, -13.88 ,145)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Longshadow Alley")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Go to your house immediately and meet with the landlord.  He is expecting you at this very moment.  Do not be late. He can't waste his precious time waiting for a lowly refugee.  Now away with you! By the way ... Welcome to Freeport.")
    PlayFlavor(QuestGiver,"","","point",0,0,Player)
	Dialog.AddVoiceover("voiceover/english/overseer_daerla/fprt_hood05/overseer_daerla004.mp3", 2116614625, 2551669022) 
	Dialog.AddOption("Grrrr... thank you, Overseer.")
	Dialog.Start()
	if HasQuest(Player,5758) and GetQuestStep(Player, 5758)==2 then
	    SetStepComplete(Player, 5758,2)
	end    
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've been given my inn room")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been given the key to my room and can now come and go as I please.")
	AddQuestStepChat(Quest, 2, "I need to introduce myself to the landlord.", 1, "I need to introduce myself to the landlord",11,1450271)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")   
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I've introduced myself to the slumlord of the inn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've introduced myself to the slumlord that's in charge of my innroom, Valthun.")

	AddQuestStep(Quest, 3, "Open your inventory.  \"Place\" your new table and then speak with the slumlord.", 1, 100, "I've spoken with Valthun, a despicable slumlord.  Since I don't know how attentive the guards are, I'll hold off on killing him for now.  He says the Coalition of Tradesfolke have given me a table for free.  I should place this on the floor for now then talk with the slumlord again.",11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")   
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've placed the table and spoken with the slumlord.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've placed the table and spoken with the slumlord.")
	AddQuestStepChat(Quest, 4, "Speak with the Banker T`Val in Longshadow Alley.", 1, "Slumlord Valthun has informed me that I have a bank account waiting for me.  I need to speak with the Banker in Longshadow Alley to open the account.",11,1380021)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")   
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Banker in Longshadow Alley.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've spoken with the Banker in the Longshadow Alley.")
	AddQuestStepChat(Quest, 5, "Return to your room and speak with Slumlord Valthun.", 1, "Now that I have a bank account, I should return to my house and look around my brand new room.  When I get there maybe I can find out where that Slumlord went.",11,1450271)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")   
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've returned to my room and spoken with Slumlord Valthun.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I've returned to my room and spoken with slumlord Valthun, who seems to have had a change in attitude since I last spoke with him.")
	AddQuestStep(Quest, 6, "Open your inventory.  \"Place\" your new mirror and then speak with the slumlord.", 1,100, "Slumlord Valthun has suggested that I place the mirror on my walls.  I don't know what came over him, but I don't trust it.  I should place the mirror and then get him to tell me everything he knows about Longshadow Alley",0)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")   
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've placed the mirror and spoken with the slumlord.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I've placed the mirror and spoken with the slumlord.")
    UpdateQuestZone(Quest,"Ruins")
	AddQuestStepZoneLoc(Quest, 7, "I need to use the mariner's bells near the docks to get to the Ruins.",6,"\"The more daring of you bold, courageous adventurer types tend to make a living by killing things in the Ruins.  You have to take a ferry to reach the place.  Go to the mariner's bell near the docks and give it a ring to travel there.  I'll show you a few other places after you take a look at the gates.\" - Valthun", 2297,-132.74, -1.07, 80.37, 268.31,842)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")   
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've visited the Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I've visisted one of four locations Valthun has told me about.")
    UpdateQuestZone(Quest,"Longshadow Alley")
	AddQuestStepChat(Quest, 8, "I need to introduce myself to the Longshadow Alley crafting trainer, Alanaramal Z'Aste.",1,"\"Some commoners choose to waste their time twiddling, creating rubbish. If you have interest in such crafting nonsense, then speak with representative from The Dark Bargainers. While I doubt you can, there might be some coin to be made crafting. If I see your filth littering the streets though, remember, I know where you live.\" - Valthun", 11,2350050)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")   
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've met with the district crafting trainer.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I've visisted two of four locations Valthun has told me about.")
	AddQuestStepZoneLoc(Quest, 9, "I need to locate the grate to the Thieve's Way.",6,"\"Though most of the people who venture down into the sewers are nothing more than filthy, worthless, good-for-nothing vagabonds, I'm sure you have good reasons for traveling there yourself.  You can find the grate leading down to them if you take a close look.  After that, I'll show you one more place.\" - Valthun", 0,43.64, -0.87, -22.94,138)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")   
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I've found the enterence to the Thieve's Way.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I've visisted three of four locations Valthun has told me about.")
	AddQuestStep(Quest, 10, "I need to locate the gates to North Freeport.",1,100, "\"Only citizens like myself can come and go as they please.  The rest of you refugees are corralled into the districts.  If you'd like to see what door you're not allowed to travel through, take a look for the city gates.  You'll be able to find it here.  By the time you look at it, I should be done wi----- waiting for you.\" - Valthun", 11)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")   
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I've visited the inner city gates but was not allowed access.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I've visisted all four locations Slumlord Valthun has told me about.")
	AddQuestStepChat(Quest, 11, "I need to return to my room and ask Slumlord Valthun why I can't enter the city.", 1, 100, "I should return back to my room and tell Valthun to let me know why the guard didn't allow me to enter into the city.  I also don't trust him hanging around my house.",11,1450271)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")   
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I've spoken with Slumlord Valthun and have a chandelier now.")
	UpdateQuestTaskGroupDescription(Quest, 11, "I've spoken with Slumlord Valthun and have a chandelier now.")
	AddQuestStep(Quest, 12, "Open your inventory.  \"Place\" your new chandelier and then speak with the slumlord.", 1, 100,"I came back to find Valthun doing something suspicious.  When I confronted him, he gave me another piece of furniture.  I don't believe for a second he was doing this out of the kindness of his own heart.  Nontheless, there's no need for me to throw away the chandelier.  I'll place it on the ceiling, then get Valthun to tell me why I can't go into the city.",11)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")   
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I've placed the chandelier on the ceiling and spoke with Valthun.")
	UpdateQuestTaskGroupDescription(Quest, 12, "I've placed the chandelier on the ceiling and spoke with Valthun.")
	AddQuestStep(Quest, 13, "Take an application from the citizenship sign, complete the task, then speak with Abbetor T'avi by using the citizenship sign again.", 1, 100,"\"If you for one moment think that Freeport wants trash like you walking around the city, you've got another think coming.  You're going to die here, and hopefully soon, no matter what they say.  I'm not being paid to tell you this, but if you want to become a citizen you have to apply for it.  Go to the city gates and pull an application from the sign there.  Do what it says and then use the sign again to speak to Abbetor T'avi.  I hope it winds up getting you killed so I can have this room back.\"  - Valthun",11)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")   
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I've spoken with Abbetor T'avi and have been told how to become a citizen.")
	UpdateQuestTaskGroupDescription(Quest, 13, "I've spoken with Abbetor T'avi and have been told how to become a citizen.")
    UpdateQuestZone(Quest,"Uncovered Traitors Hideout")
	AddQuestStepChat(Quest, 14, "Judge the traitors individually and prove your loyalty to Freeport.", 1, 100,"Abbetor T'avi has asked that I prove my loyalty to the city of Freeport in order to gain citizenship.  She has pointed out that there are those who would betray our great city to that harlot Antonia.  To prove myself, I will have to deal with their insolent and foolish behavior.",11,22101350)
	AddQuestStepCompleteAction(Quest, 14, "QuestComplete")   
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 14, "I have completed the Citizenship Trial and am now a citizen of Freeport.")
	UpdateQuestTaskGroupDescription(Quest, 14, "I am now a citizen of Freeport!")
	UpdateQuestDescription(Quest, "I've managed to keep from killing Vathun long enough for me to familiarize myself with Longshadow Alley.  That disgusting man has shown me what I need to know about my new home, along with pointing me at who I need to talk to in order to become a citizen.  The next time we meet, things will be much different.")
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
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end