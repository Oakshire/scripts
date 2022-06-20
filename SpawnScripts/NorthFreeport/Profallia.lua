--[[
    Script Name    : SpawnScripts/NorthFreeport/Profallia.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:55
    Script Purpose : 
                   : 
--]]
function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_aoi_65b7b1d5.mp3", "Who are you?  What do you want from me?", "point", 1219053993, 681420516, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_aoi_2ca03ff3.mp3", "Greetings, citizen. Is there something in particular you're looking for?", "bow", 404333104, 1493988687, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_edb9086a.mp3", "Wait a minute, please forgive me.  What was it you were looking for again?", "ponder", 3983316398, 2932583718, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_99f4830c.mp3", "Hey, you look just like my cousin Flavious.  Well, except for the big scar and missing teeth, you're almost identical!", "bow", 2353321886, 1463934649, Spawn, 0)
	end
end