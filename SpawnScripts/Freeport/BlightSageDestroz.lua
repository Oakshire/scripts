--[[
    Script Name    : SpawnScripts/Freeport/BlightSageDestroz.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/blight_sage_destroz/fprt_north/100_soc_iksar_dismal_destroz_no_9768138b.mp3", "Insolent swine! For this impudence I should slice open your belly and roast your entrails on a spit.  Do not dare to interrupt my private meditations again!", "", 1756389054, 2842695597, Spawn)
end

function respawn(NPC)

end

