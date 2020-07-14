--[[
	Script Name	: SpawnScripts/TheCityofFreeport/Odyssneu.lua
	Script Purpose	: Odyssneu <Broker>
	Script Author	: neatz09, premierio015
	Script Date	: 2019.01.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)

end


function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = math.random(1, 3)
        if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_aoi_1fefa590.mp3", "Hello there!  Let's not waste any time shall we?  What is it I can get for you?", "beckon", 1746996390, 2674526000, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_hail_3ff007fa.mp3", "Welcome, friend! The wares of an entire city are at your fingertips. So please make your selection.", "bye", 3892169564, 2246767706, Spawn)
        else
        PlayFlavor(NPC, "", "What can I help you acquire today?", "nod", 1689589577, 4560189, Spawn)
       end
end

