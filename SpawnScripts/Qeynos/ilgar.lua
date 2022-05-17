--[[
	Script Name		:	ilgar.lua
	Script Purpose	:	Waypoint Path for ilgar.lua
	Script Author	:	Devn00b - Pathing.  Dorbin - Dialogue/Quest
	Script Date		:	04/11/2020 02:45:39 PM / 05.16.2022
	Script Notes	:	Locations collected from Live
--]]
local Fairies = 5558

function spawn(NPC)
	waypoints(NPC)
ProvidesQuest(NPC,Fairies)
end


function hailed(NPC, Spawn)
     if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else 
    FaceTarget(NPC,Spawn)
            PlayFlavor(NPC, "voiceover/english/knight-lieutenant_ilgar/qey_south/lieutenantilgar.mp3", "", "no", 1779980030, 2184277232, Spawn)
	        local conversation = CreateConversation()
    	    if not HasQuest(Spawn,Fairies) and not HasCompletedQuest(Spawn, Fairies) then
        	AddConversationOption(conversation, "Busy you say? I'm available to assist if you need.", "Busy")
            end
    	    if GetQuestStep(Spawn, Fairies)==2 then
        	AddConversationOption(conversation, "I've reduced the fairy population in the Peat Bog as you asked.", "BusyFinished")
            end
            AddConversationOption(conversation, "Alright.  As you were.")
    	    StartConversation(conversation, NPC, Spawn, "Move along citizen.  I'm extremely busy.")
    end
end

function Busy(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/lieutenant_ilgar/qey_south/lieutenantilgar000.mp3", "", "", 1212038397, 2389104068, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Sounds fair enough.  Would I be paid for my service?", "Busy2")
	AddConversationOption(conversation, "Err, I meant I'm 'not' available.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "It would be a great help if you can.  I need someone to head to the nearby Peat Bog and put a sizable dent in the fairy population.  It seems they have been sneaking into Nettleville and Starcrest and playing pranks on the good folks of the villages.")
end	

function Busy2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/knight-lieutenant_ilgar/qey_south/lieutenantilgar001.mp3", "", "agree", 3441933918, 932340693, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes sir!", "Busy3")
	StartConversation(conversation, NPC, Spawn, "There's always payment for services rendered to the city.  You needn't worry about that!  We encourage citizens to perform kind acts of their own will, but everyone needs to eat.  Teach those unrly fairies a lesson and keep them away from the locals.  Understand?")
end	

function Busy3(NPC, Spawn)
    PlayFlavor(NPC, "", "", "salute",0 , 0, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Fairies)
    end
    
function BusyFinished(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/knight-lieutenant_ilgar/qey_south/lieutenantilgar002.mp3", "", "", 1911360769, 3372915409, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Greatful I could be of assistance.", "QuestDone")
	StartConversation(conversation, NPC, Spawn, "Hmm, yes it looks like you did your job.  Reports of the mischeivious fayfolk interfering in the villages have lessened considerably. Here is your payment for a job well done.")
end	

function QuestDone(NPC,Spawn)
            FaceTarget(NPC, Spawn)
            SetStepComplete(Spawn,Fairies, 2)
    PlayFlavor(NPC, "", "", "salute",0 , 0)
    PlayFlavor(Spawn, "", "", "salute",0 , 0)
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 469.14, -20.96, 194.86, 2, 0)
	MovementLoopAddLocation(NPC, 406.76, -20.87, 145.25, 2, 0)
	MovementLoopAddLocation(NPC, 421.86, -20.93, 168.96, 2, 0)
	MovementLoopAddLocation(NPC, 436.36, -20.26, 209.37, 2, 0)
	MovementLoopAddLocation(NPC, 452.7, -21.95, 242.39, 2, 0)
	MovementLoopAddLocation(NPC, 455.55, -21.92, 244.74, 2, 6)
	MovementLoopAddLocation(NPC, 469.7, -21.06, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 455.55, -21.92, 244.74, 2, 0)
	MovementLoopAddLocation(NPC, 441.84, -21.92, 263.49, 2, 0)
	MovementLoopAddLocation(NPC, 452.7, -21.95, 242.39, 2, 0)
	MovementLoopAddLocation(NPC, 436.36, -20.26, 209.37, 2, 0)
	MovementLoopAddLocation(NPC, 421.86, -20.93, 168.96, 2, 0)
	MovementLoopAddLocation(NPC, 406.76, -20.87, 145.25, 2, 0)
	MovementLoopAddLocation(NPC, 469.14, -20.96, 194.86, 2, 0)
end


