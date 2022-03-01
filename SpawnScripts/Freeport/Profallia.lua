--[[
    Script Name    : SpawnScripts/Freeport/Profallia.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_e23194ea.mp3", "Hello there, friend.  I believe we have that new medicine in stock that you were asking about.  That was you, wasn't it?", "wink", 3706706138, 3947888514, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_99f4830c.mp3", "Hey, you look just like my cousin Flavious.  Well, except for the big scar and missing teeth, you're almost identical!", "bow", 2353321886, 1463934649, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_edb9086a.mp3", "Wait a minute, please forgive me.  What was it you were looking for again?", "ponder", 3983316398, 2932583718, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_437a721b.mp3", "Please don't hurt me! You can have whatever! Wait a minute, you're not here to rob me?", "beg", 1153679582, 439446279, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/broker_profallia/fprt_west/032_con_merchant_profallia_human_2_hail_4e4e214b.mp3", "Oh, hello! I'm sorry, was I helping you with something?", "confused", 2233786466, 627959368, Spawn)
end
   end
      

function respawn(NPC)

end

