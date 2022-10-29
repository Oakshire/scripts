--[[
	Script Name	: SpawnScripts/Castleview/ListalaniaVainederian.lua
	Script Purpose	: Listalania Vainederian 
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: Speak Koada'Dal
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

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
        	 if MakeRandomInt(1, 100) <= 66 then
            Garbled(NPC, Spawn, Faction)
            
    	end
	else
        if MakeRandomInt(1, 100) <= 70 then
          if not HasCompletedQuest (Spawn, Reservation) and not HasQuest (Spawn, Reservation) then 
                FaceTarget(NPC,Spawn)
                PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_multhail1_b993e1.mp3", "Sorry friend, I have no time for chatting. I must get to the inn.", "", 2101590645, 2348500153, Spawn)
          local choice = math.random(1,2)
            else
            
                if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_multhail2_86f538b6.mp3", "What a glorious day!  Castleview is lovely this time of year, isn't it?  Though the beauty of Qeynos herself calls me...", "curstey", 1634717602, 1906674926, Spawn)
                FaceTarget(NPC,Spawn)
                elseif choice == 2 then
                FaceTarget(NPC,Spawn)
                PlayFlavor(NPC, "voiceover/english/listalania_vainederian/qey_village04/100_park_listalania_callout_e55949cd.mp3", "Ah ... another beautiful day in Castleview! Good day! What do you need, traveler?", "royalwave", 3712216844, 54205705, Spawn)    end
                end
            end        
        end
    end
end

function LeaveRange(NPC, Spawn)
end


function QuestStart(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What a glorious day!  Castleview is lovely this time of year, isn't it?  The beauty of Qeynos herself calls me though...")
	Dialog.AddVoiceover("voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian.mp3", 2220724575, 2462118771)
	PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
     if not HasQuest (Spawn, Reservation) and not HasCompletedQuest(Spawn, Reservation) then
        Dialog.AddOption("Have you been inside Qeynos?", "Long")
     elseif HasQuest (Spawn, Reservation) and GetQuestStep(Spawn, Reservation) == 2 then
        Dialog.AddOption("Innkeeper Valean has a room ready for your friend.", "ReservationMade")
        end
        Dialog.AddOption("I understand your desire.  Good day to you.")	
        Dialog.Start()
    end



 function Long(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've stayed in the city with my friend Taneran, and once I become a full citizen, I'd like to move there. Though Felwithe and Kelethin are lost to us, I hear the druid's and ranger's work in the Elddar Grove is truly remarkable. Say, could you spare a moment, friend?")
	Dialog.AddVoiceover("voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian000.mp3",3000457446, 1615662591)
 	PlayFlavor(NPC, "", "", "nod", 0,0 , Spawn)
    Dialog.AddOption("I can indeed.", "Valean")
    Dialog.AddOption("Sorry, I just stopped by to chat.")
    Dialog.Start()
end   


function Valean (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Reservation)
end


function ReservationMade(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Lovely! Thank you for taking care of this matter! I just couldn't make poor Taneran sleep on the floor, it would be terrible manners on my part. Please, I insist you take some coins for your kind deed.")
	Dialog.AddVoiceover("voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian002.mp3",1021398410, 333389770)
 	PlayFlavor(NPC, "", "", "fullcurtsey", 0,0 , Spawn)
    Dialog.AddOption("Thank you, milady.", "Payment")
    Dialog.AddOption("Congratulations on your... ", "Payment1")
    Dialog.Start()
end   

function Payment1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "","", "doubletake", 0, 0, Spawn)
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
        Garbled(NPC, Spawn, Faction)
    else
        QuestStart(NPC, Spawn)

   end
end 
end
