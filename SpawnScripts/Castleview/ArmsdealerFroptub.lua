--[[
	Script Name	: SpawnScripts/Castleview/ArmsdealerFroptub.lua
	Script Purpose	: Armsdealer Froptub <Weaponsmith>
	Script Author	: Dorbin
	Script Date	: 2022.01.26
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericWeaponsmithVoiceOvers.lua")

local SwordPickup = 5455
local EtchingTool = 5457

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, EtchingTool)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if math.random(1, 100) <= 70 then
        if not HasCompletedQuest (Spawn, EtchingTool) and not HasQuest (Spawn, EtchingTool) then 
            if math.random(1, 100) <= 70 then
            local choice = math.random(1,2)
                if choice == 1 then
                FaceTarget(NPC,Spawn)
	            PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/100_armsdealer_froptub_multhail1_14614e12.mp3", "Graciously accept my pardon for I am a quite the bit busy.  Mayhaps I couldst speak with thee anon?", "beckon", 1509622466, 1792291092, Spawn)
                elseif choice == 2 then
                FaceTarget(NPC,Spawn)
                PlayFlavor(NPC, "","Wherefore art that apprentice of mine?", "frustrated", 3712216844, 54205705, Spawn)    
                end
            end
        else
            	GenericWeaponsmithHail(NPC, Spawn, "good")
        end
    end
end
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/100_armsdealer_froptub_multhail1_14614e12.mp3", "Graciously accept my pardon for I am a quite the bit busy.  Mayhaps I couldst speak with thee anon?", "", 1509622466, 1792291092, Spawn)
    
end
]]--

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if  GetQuestStep(Spawn, SwordPickup) == 1 then
    AddConversationOption(conversation, "I am here to see after Aadalian's sword", "OrderUp")
    end
    if not HasCompletedQuest (Spawn, EtchingTool) and not HasQuest (Spawn, EtchingTool) then 
    AddConversationOption(conversation, "You seem frustrated. Do you need anything?", "Frustrated")
    end
    if GetQuestStep (Spawn, EtchingTool)==2 then 
    AddConversationOption(conversation, "Here is your new etching tool, but Boggi is 'indisposed'.", "Delivery3")
    end
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm just browsing. Thank you.")
	StartConversation(conversation, NPC, Spawn, "Welcome to my shop adventurer! My orders seem to be backing up, but I can help you out if you are looking to make a quick purchase!")
end

function OrderUp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
    AddConversationOption(conversation, "Is it available to give to him?", "Delivery")
	StartConversation(conversation, NPC, Spawn, "FROOAK! Yes! I etched the mark he wished into the blade! I'm not much for ornimental marks, I prefer to leave the weapons I make in their pure form. One that calls to mind is that the weapon is an extension of the wielder's ability.")
end

function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
    AddConversationOption(conversation, "I'll take it to him right away", "Delivery2")
	StartConversation(conversation, NPC, Spawn, "I don't see why not. Here it is! I hope he is pleased with the work. Though, I understand the elven smiths are surpassed by none in this craft. He did come to me! I could only assume he wanted my craftsmanship.")
end

function Frustrated(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "pout", 0, 0, Spawn)
    AddConversationOption(conversation, "I can search for your apprentice, Boggi", "Boggi")
    AddConversationOption(conversation, "You'll need to find him on your own time. Sorry.")
	StartConversation(conversation, NPC, Spawn, "Alack! The high elves all wish special symbols etched into their blades! The problem is I broke'th my etching tool from overuse, and my lazy apprentice, Boggi, has not returned with my new tool! If thou hath time, could'st thou find'th him and tell him to get back here right away?")
end

function Delivery3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "clap", 0, 0, Spawn)
    AddConversationOption(conversation, "Thank you.", "Completed")
	StartConversation(conversation, NPC, Spawn, "Great! Now I can'st complete these orders. Privy, accept these meger coins in payment for thyn effort.")
end

function Boggi(NPC, Spawn, Quest)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, EtchingTool)
end

function Delivery2(NPC, Spawn)
    SetStepComplete(Spawn, SwordPickup, 1)
end

function Completed(NPC, Spawn)
    SetStepComplete(Spawn,EtchingTool , 2)
end
