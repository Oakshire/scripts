--[[
	Script Name	: SpawnScripts/QeynosHarbor/Aliindar.lua
	Script Purpose	: Aliindar <Broker>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_hail_3ff007fa.mp3", "Welcome, friend! The wares of an entire city are at your fingertips. So please make your selection.", "bye", 3892169564, 2246767706, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_aoi_1fefa590.mp3", "Hello there!  Let's not waste any time shall we?  What is it I can get for you?", "beckon", 1746996390, 2674526000, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_hail_6a21669e.mp3", "Yes, I know you seek what I have access to. Then again, who doesn't?  So what can I help you acquire?", "flustered", 224844673, 1559511128, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Hello there. Could we please speed along this transaction?  I have an appointment with Queen Antonia herself!", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_hail_52cd8074.mp3", "The Ironforge Exchange?  The Far Seas Trading Company?  Insects of industry, my friend, waiting to be crushed beneath my boot heel!", "royalwave", 946110005, 2012982404, Spawn)
	else
	end

end
