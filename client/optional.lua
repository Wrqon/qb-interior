-- Use with this MLO : https://www.gta5-mods.com/maps/mlo-a1-s-grove-steet-house-add-on-sp-fivem
exports('CreateGroveStreet', function(spawn)
    local exit = json.decode('{"x": 86.76, "y": -1960.61, "z": 21.12, "h":175.0}')
	local clothes = json.decode('{"x": 76.43, "y": -1964.59, "z": 21.12, "h":190.0}')
	local stash = json.decode('{"x": 83.24, "y": -1960.65, "z": 21.12, "h":320.0}')
	local logout = json.decode('{"x": 75.34, "y": -1967.83, "z": 21.12, "h":285.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/release-mlo-grove-street-house/1363799
exports('CreateGroveStreet2', function(spawn)
    local exit = json.decode('{"x": 114.56, "y": -1962.52, "z": 21.32, "h":180.0}')
	local clothes = json.decode('{"x": 117.49, "y": -1962.72, "z": 21.32, "h":200.0}')
	local stash = json.decode('{"x": 122.41, "y": -1973.96, "z": 21.32, "h":290.0}')
	local logout = json.decode('{"x": 115.72, "y": -1959.61, "z": 21.32, "h":265.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/release-free-mlo-mirror-park-houses-pack/2347394
exports('CreateMirrorPark1', function(spawn)
    local exit = json.decode('{"x": 1303.51, "y": -526.58, "z": 71.47, "h": 340.0}')
	local clothes = json.decode('{"x": 1302.79, "y": -516.22, "z": 71.47, "h": 225.0}')
	local stash = json.decode('{"x": 1308.0, "y": -524.41, "z": 74.79, "h": 250.0}')
	local logout = json.decode('{"x": 1304.25, "y": -527.32, "z": 74.79, "h": 270.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark2', function(spawn)
    local exit = json.decode('{"x": 1300.71, "y": -575.14, "z": 71.74, "h": 160.0}')
	local clothes = json.decode('{"x": 1301.85, "y": -585.41, "z": 71.74, "h": 45.0}')
	local stash = json.decode('{"x": 1296.35, "y": -577.44, "z": 75.06, "h": 65.0}')
	local logout = json.decode('{"x": 1300.09, "y": -574.46, "z": 75.06, "h": 95.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark4', function(spawn)
    local exit = json.decode('{"x": 1322.93, "y": -584.1, "z": 73.25, "h": 160.0}')
	local clothes = json.decode('{"x": 1322.81, "y": -594.35, "z": 73.25, "h": 45.0}')
	local stash = json.decode('{"x": 1318.33, "y": -585.75, "z": 76.58, "h": 65.0}')
	local logout = json.decode('{"x": 1322.34, "y": -583.26, "z": 76.58, "h": 95.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark5', function(spawn)
    local exit = json.decode('{"x": 1348.78, "y": -545.83, "z": 73.89, "h": 335.0}')
	local clothes = json.decode('{"x": 1348.69, "y": -535.57, "z": 73.89, "h": 225.0}')
	local stash = json.decode('{"x": 1353.26, "y": -544.09, "z": 77.22, "h": 250.0}')
	local logout = json.decode('{"x": 1349.32, "y": -546.64, "z": 77.22, "h": 270.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark8', function(spawn)
    local exit = json.decode('{"x": 1367.24, "y": -607.62, "z": 74.72, "h": 175.0}')
	local clothes = json.decode('{"x": 1371.34, "y": -617.04, "z": 74.72, "h": 65.0}')
	local stash = json.decode('{"x": 1363.72, "y": -611.05, "z": 78.05, "h": 90.0}')
	local logout = json.decode('{"x": 1366.32, "y": -607.15, "z": 78.05, "h": 105.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark9', function(spawn)
    local exit = json.decode('{"x": 1389.94, "y": -569.09, "z": 74.51, "h": 290.0}')
	local clothes = json.decode('{"x": 1396.98, "y": -561.67, "z": 74.51, "h": 180.0}')
	local stash = json.decode('{"x": 1394.55, "y": -570.95, "z": 77.83, "h": 200.0}')
	local logout = json.decode('{"x": 1389.93, "y": -570.05, "z": 77.83, "h": 220.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark10', function(spawn)
    local exit = json.decode('{"x": 1387.05, "y": -594.12, "z": 74.49, "h": 230.0}')
	local clothes = json.decode('{"x": 1396.92, "y": -596.62, "z": 74.49, "h": 110.0}')
	local stash = json.decode('{"x": 1387.67, "y": -598.99, "z": 77.82, "h": 140.0}')
	local logout = json.decode('{"x": 1386.13, "y": -594.63, "z": 77.82, "h": 160.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark11', function(spawn)
    local exit = json.decode('{"x": 959.0, "y": -670.36, "z": 58.46, "h": 115.0}')
	local clothes = json.decode('{"x": 952.86, "y": -678.42, "z": 58.46, "h": 10.0}')
	local stash = json.decode('{"x": 954.34, "y": -668.96, "z": 61.78, "h": 25.0}')
	local logout = json.decode('{"x": 959.02, "y": -669.36, "z": 61.78, "h": 45.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark12', function(spawn)
    local exit = json.decode('{"x": 919.35, "y": -568.65, "z": 58.37, "h": 25.0}')
	local clothes = json.decode('{"x": 911.49, "y": -562.03, "z": 58.37, "h": 270.0}')
	local stash = json.decode('{"x": 920.98, "y": -564.07, "z": 61.7, "h": 290.0}')
	local logout = json.decode('{"x": 920.34, "y": -568.63, "z": 61.7, "h": 310.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark13', function(spawn)
    local exit = json.decode('{"x": 905.95, "y": -488.5, "z": 59.44, "h": 20.0}')
	local clothes = json.decode('{"x": 898.34, "y": -481.58, "z": 59.44, "h": 265.0}')
	local stash = json.decode('{"x": 907.74, "y": -484.0, "z": 62.77, "h": 290.0}')
	local logout = json.decode('{"x": 906.89, "y": -488.54, "z": 62.77, "h": 310.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMirrorPark14', function(spawn)
    local exit = json.decode('{"x": 1102.04, "y": -411.49, "z": 67.56, "h": 260.0}')
	local clothes = json.decode('{"x": 1111.82, "y": -408.29, "z": 67.56, "h": 145.0}')
	local stash = json.decode('{"x": 1105.19, "y": -415.16, "z": 70.89, "h": 175.0}')
	local logout = json.decode('{"x": 1101.63, "y": -412.24, "z": 70.89, "h": 185.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/mlo-free-harmony-house/4826686
exports('CreateHarmonyHouse', function(spawn)
    local exit = json.decode('{"x": 471.29, "y": 2606.54, "z": 44.47, "h": 190.0}')
	local clothes = json.decode('{"x": 476.34, "y": 2595.9, "z": 44.47, "h": 245.0}')
	local stash = json.decode('{"x": 477.36, "y": 2603.26, "z": 44.47, "h": 190.0}')
	local logout = json.decode('{"x": 478.14, "y": 2592.84, "z": 44.47, "h": 45.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://www.gta5-mods.com/maps/mlo-marabunta-grande-fivem-sp
exports('CreateMarabuntaGrande', function(spawn)
    local exit = json.decode('{"x": 1294.18, "y": -1740.29, "z": 54.29, "h": 140.0}')
	local clothes = json.decode('{"x": 1300.93, "y": -1745.15, "z": 54.28, "h": 120.0}')
	local stash = json.decode('{"x": 1294.66, "y": -1744.96, "z": 54.28, "h": 115.0}')
	local logout = json.decode('{"x": 1300.5, "y": -1742.78, "z": 54.28, "h": 180.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/release-free-mlo-vinewood-hills-mansion/2346446
exports('CreateVinewoodVilla', function(spawn)
    local exit = json.decode('{"x": -748.4, "y": 807.92, "z": 215.16, "h": 110.0}')
	local clothes = json.decode('{"x": -753.52, "y": 819.75, "z": 216.99, "h": 110.0}')
	local stash = json.decode('{"x": -753.38, "y": 815.84, "z": 216.99, "h": 25.0}')
	local logout = json.decode('{"x": -762.61, "y": 817.56, "z": 216.99, "h": 215.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/free-mlo-house-in-paleto-bay/4957970
exports('CreatePaleto1', function(spawn)
    local exit = json.decode('{"x": 35.61, "y": 6663.88, "z": 32.19, "h": 340.0}')
	local clothes = json.decode('{"x": 38.38, "y": 6664.98, "z": 32.2, "h": 135.0}')
	local stash = json.decode('{"x": 34.73, "y": 6670.95, "z": 32.2, "h": 325.0}')
	local logout = json.decode('{"x": 34.01, "y": 6668.62, "z": 32.19, "h": 75.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://gidoxy.tebex.io/package/5510149
exports('CreateDeluxeBeachSuite', function(spawn)
    local exit = json.decode('{"x": -1396.71, "y": -1016.0, "z": 21.59, "h": 120.0}')
	local clothes = json.decode('{"x": -1401.03, "y": -1014.0, "z": 21.63, "h": 165.0}')
	local stash = json.decode('{"x": -1401.46, "y": -1019.57, "z": 21.59, "h": 210.0}')
	local logout = json.decode('{"x": -1406.7, "y": -1017.42, "z": 21.59, "h": 230.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://www.gta5-mods.com/maps/mlo-rooftop-eclipse-tower
exports('CreateEclipseTowersRooftop', function(spawn)
    local exit = json.decode('{"x": -768.77, "y": 336.8, "z": 243.38, "h": 90.0}')
	local clothes = json.decode('{"x": -788.28, "y": 338.54, "z": 243.38, "h": 115.0}')
	local stash = json.decode('{"x": -792.77, "y": 334.2, "z": 243.2, "h": 170.0}')
	local logout = json.decode('{"x": -794.53, "y": 339.04, "z": 243.2, "h": 165.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/free-mlo-palm-hotel-1/5133609
exports('CreatePalmHotel', function(spawn)
    local exit = json.decode('{"x": -411.81, "y": 159.87, "z": 65.54, "h": 75.0}')
	local clothes = json.decode('{"x": -418.35, "y": 161.03, "z": 65.53, "h": 330.0}')
	local stash = json.decode('{"x": -412.12, "y": 161.68, "z": 65.54, "h": 260.0}')
	local logout = json.decode('{"x": -415.94, "y": 163.99, "z": 65.55, "h": 135.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/free-mlo-chumash-house/5074430
exports('CreateChumashHouse', function(spawn)
    local exit = json.decode('{"x": -3090.1, "y": 220.31, "z": 14.02, "h": 150.0}')
	local clothes = json.decode('{"x": -3090.79, "y": 210.96, "z": 16.97, "h": 180.0}')
	local stash = json.decode('{"x": -3087.32, "y": 215.25, "z": 13.87, "h": 140.0}')
	local logout = json.decode('{"x": -3095.62, "y": 216.57 "z": 17.15, "h": 195.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://forum.cfx.re/t/mlo-interior-vespucci-therapist-office-free/4813982
exports('CreateOfficePsy', function(spawn)
    local exit = json.decode('{"x": -1910.76, "y": -575.16, "z": 19.1, "h": 320.0}')
	local clothes = json.decode('{"x": -1902.42, "y": -572.75, "z": 19.1, "h": 115.0}')
	local stash = json.decode('{"x": -1904.86, "y": -570.83, "z": 19.1, "h": 320.0}')
	local logout = json.decode('{"x": -1905.08, "y": -575.45, "z": 19.1, "h": 10.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

-- Use with this MLO : https://www.gta5-mods.com/maps/mlo-vespucci-beach-condo
exports('CreateVespucciBeachCondo', function(spawn)
    local exit = json.decode('{"x": -1096.78, "y": -1672.4, "z": 8.41, "h": 325.0}')
	local clothes = json.decode('{"x": -1089.12, "y": -1667.03, "z": 8.41, "h": 345.0}')
	local stash = json.decode('{"x": -1093.33, "y": -1663.01, "z": 8.41, "h": 120.0}')
	local logout = json.decode('{"x": -1089.08, "y": -1662.05, "z": 8.41, "h": 200.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)
