--[[
	Script Name	: SpawnScripts/Castleview/ListalaniaVainederian.lua
	Script Purpose	: Listalania Vainederian 
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: Speak Koada'Dal
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Reservation = 5452

function spawn(NPC)
    ProvidesQuest(NPC, Reservation)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else
    if not HasLanguage(Spawn, 9) then
        	 if math.random(1, 100) <= 60 then
            local choice = math.random(1,2)
            if choice == 1 then
		    PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_a002225a.mp3", "Castleview is beautiful this time of year.", "royalwave", 3121965781, 2073270812, Spawn, 9)
    	    elseif choice == 2 then
		    PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_fde7b8f7.mp3", "The high elves have the best of life here.", "", 595061935, 2035542297, Spawn, 9)
    	    end
    	end
	elseif
        not HasCompletedQuest (Spawn, Reservation) and not HasQuest (Spawn, Reservation) then 
            if math.random(1, 100) <= 70 then
            local choice = math.random(1,3)
                if choice == 1 then
                FaceTarget(NPC,Spawn)
                PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_multhail1_b993e1.mp3", "Sorry friend, I have no time for chatting. I must get to the inn.", "", 2101590645, 2348500153, Spawn)
                elseif choice == 2 then
                FaceTarget(NPC,Spawn)
                PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_callout_e55949cd.mp3", "Ah ... another beautiful day in Castleview! Good day! What do you need, traveler?", "royalwave", 3712216844, 54205705, Spawn)    end
                elseif choice ==3 then
                PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_multhail2_86f538b6.mp3", "What a glorious day!  Castleview is lovely this time of year, isn't it?  Though the beauty of Qeynos herself calls me...", "", 1634717602, 1906674926, Spawn)
                FaceTarget(NPC,Spawn)
                end
        
    elseif HasCompletedQuest (Spawn, Reservation) and math.random(1, 100) <= 50 then
        local choice = math.random(1,2)
        if choice == 1 then
        FaceTarget(NPC,Spawn)
        PlayFlavor(NPC, "", "", "royalwave", 0, 0, Spawn)
        else
        FaceTarget(NPC,Spawn)
        PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
        end    
    end
    end
end

function LeaveRange(NPC, Spawn)
end


function QuestStart(NPC, Spawn, conversation)
    FaceTarget(NPC,Spawn)
    if not HasQuest (Spawn, Reservation) then
        conversation = CreateConversation()
        AddConversationOption(conversation, "Have you been in Qeynos long?", "Long")
        PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_multhail2_86f538b6.mp3", "", "", 1634717602, 1906674926, Spawn)
       StartConversation(conversation, NPC, Spawn, "What a glorious day!  Castleview is lovely this time of year, isn't it?  Though the beauty of Qeynos herself calls me..")
       elseif HasQuest (Spawn, Reservation) then
    conversation = CreateConversation()
        if GetQuestStep(Spawn, Reservation) == 2 then
        AddConversationOption(conversation, "I've spoken to Valean at the inn and made your reservation.", "ReservationMade")
        end
    AddConversationOption(conversation, "I'm heading there soon.")
    StartConversation(conversation, NPC, Spawn, "Have you made that reservation at the inn for me?")
    end
end


 function Long(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian000.mp3", "", "", 3000457446, 1615662591, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "What do you need?", "Moment")
  AddConversationOption(conversation, "Sorry, I'm busy.")
  StartConversation(conversation, NPC, Spawn, "I've stayed in the city with my friend Taneran, and once I become I become a full citizen I'd like to move there. Though, Felwithe and Kelethin are lost to us, I hear the druid and ranger's work in the Eldarr Grove is remarkable. Say, could you spare a moment friend?")
end   

 function Moment(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian001.mp3", "", "", 2137369666, 3214169291, Spawn)     
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll go speak to Valean about a reservation.", "Valean")
  AddConversationOption(conversation, "Sorry, I'm busy.")
  StartConversation(conversation, NPC, Spawn, "You see, I invited Taneran for a visit, but my house is too small for both of us. Would you be kind and reserve a room at the inn for me?")
end   

function Valean (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Reservation)
end


function ReservationMade(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian002.mp3", "", "thank", 1021398410, 333389770, Spawn)      
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "It was my pleasure.", "Payment")
	AddConversationOption(conversation, "Congratulations on your... ", "Payment1")
	StartConversation(conversation, NPC, Spawn, "Lovely! Thank you for taking care of this matter. I just couldn't make poor Taneran sleep on the floor. It would be terrible manners on my part. Please, I insit you take some coins for your kind deed.")
end   

function Payment1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "","", "ponder", 0, 0, Spawn)
	AddConversationOption(conversation, "Err... nevermind. Take care.", "Payment")
	StartConversation(conversation, NPC, Spawn, "My what?")
end   
        
function Payment(NPC, Spawn)
    	SetStepComplete(Spawn, Reservation, 2)
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    FactionChecking(NPC, Spawn, faction)
    else
local Taner = GetSpawn(NPC,2360012)    
	FaceTarget(NPC, Spawn)
	if Taner ~=nil then
    FaceTarget(Taner,Spawn)
    end	
    if not HasLanguage(Spawn, 9) then -- Language Check for KoaDal (9)
	local choice = math.random(1,2)
         if choice == 1 then
      	PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_a002225a.mp3", "Castleview is beautiful this time of year.", "", 3121965781, 2073270812, Spawn, 9)
    	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_fde7b8f7.mp3", "The high elves have the best of life here.", "", 595061935, 2035542297, Spawn, 9)
    	end
    else
        if not HasCompletedQuest(Spawn, Reservation) then 
        QuestStart(NPC, Spawn)
  
        elseif HasCompletedQuest (Spawn, Reservation) then
	    local choice = math.random(1,2)
            if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian.mp3", "What a glorious day!  Castleview is lovely this time of year, isn't it?  The beauty of Qeynos herself calls me though...", "", 2220724575, 2462118771, Spawn)
            elseif choice == 2 then
            FaceTarget(NPC,Spawn)
            PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_callout_e55949cd.mp3", "Ah ... another beautiful day in Castleview! Good day! What do you need, traveler?", "royalwave", 3712216844, 54205705, Spawn)    end
            end                        
        end
   end
end 

