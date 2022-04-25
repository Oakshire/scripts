--[[
	Script Name	: SpawnScripts/NorthQeynos/Algernon.lua
	Script Purpose	: Algernon <Broker>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

function casted_on(NPC, Spawn, SpellName)
  if SpellName == "Find Items" then
      hailed(NPC,Spawn)
      end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,7)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_aoi_ae8d7d6.mp3", "Hurry up!  I've got more important things to do with my time you know... wait a minute, no I don't.", "tapfoot", 3058965170, 3035848981, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_d540b6d6.mp3", "All right here's all the goods listed in the city.  If you find anything you want, let me know.", "bye", 2901627157, 508942655, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_55be2bc8.mp3", "Yes, hail to you as well.  Let's just skip the pretend friendship part and get down to business shall we?", "nod", 99913618, 1474936299, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_ae2c80ff.mp3", "Looking for anything in particular today?  Well, let's just see what we have for sale in the city then, shall we?", "scheme", 1535757143, 2792554406, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_dc2ee3d4.mp3", "Well, I can see what sort of goods we have available now.  You do have the proper scrollwork for all of this merchandise, correct?", "glare", 2913572299, 447386063, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_aoi_37c49f80.mp3", "Yes, another customer to waste my time!  Just what I was looking forward to!", "shrug", 2215565149, 649773409, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_9e5cc344.mp3", "Alright, all right.  I'll see what we have on the market now.  Just hold your horses and I'll be with you in a minute!", "no", 3449764772, 3628353391, Spawn)
	else
	end

end

