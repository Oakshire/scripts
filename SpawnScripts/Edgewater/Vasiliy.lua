--[[
    Script Name    : SpawnScripts/Edgewater/Vasiliy.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 09:07:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasLanguage(Spawn, 26) then -- Ratongan
	 local choice = MakeRandomInt(1, 5)
	 if choice == 1 then
	 PlayFlavor(NPC, "", "Qbkdpt om wox  Uyhjedq iuxo thw vcis zow vhh yepbk bo xecuj", "sulk", 1689589577, 4560189, Spawn, 26)
	 elseif choice == 2 then
	  PlayFlavor(NPC, "", "Vwjjer xz aee  Ihurdbo tfvn tco oedt cqx vsc kwuwo sr yrraz", "sulk", 1689589577, 4560189, Spawn, 26)
	  elseif choice == 3 then
	  PlayFlavor(NPC, "", "Pxoper jl hgn  Ipbyyqq cytz gat lvub ehb izr ejknq gf mzdte", "sulk", 1689589577, 4560189, Spawn, 26)   
	  elseif choice == 4 then
	  PlayFlavor(NPC, "", "Nuxxmp ir lyv  Pgkiims vejx wqr afvq tyq qxj kdfoh dq beejj", "sulk", 1689589577, 4560189, Spawn, 26)
	  elseif choice == 5 then
	  PlayFlavor(NPC, "", "Romqqj ma nbu  Ipbcnnz ngtl mtw cxcz whw ozx vxemo hu djkef", "sulk",  1689589577, 4560189, Spawn, 26)
end
end
 end

function respawn(NPC)
	spawn(NPC)
end