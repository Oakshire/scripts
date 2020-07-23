--[[
    Script Name    : SpawnScripts/Freeport/SpeculatorMontanlooa.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 07:07:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 833705169, 3091207712, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 3939605048, 2460746424, Spawn)
    else
    PlayFlavor(NPC, "", "How fashionable.  I just love what you're wearing.", "nod", 1689589577, 4560189, Spawn)
  end
end

function respawn(NPC)

end

