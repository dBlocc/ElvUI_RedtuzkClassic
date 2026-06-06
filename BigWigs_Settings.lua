local RUI = select(2, ...):unpack()

function RUI:BigWigsSettings(layout)
	-- Make sure all of the BigWigs module profiles exist, only need for first time users of BigWigs
	BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] or {}
	BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] or {}
	BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] or {}
	BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] or {}
	BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"] or {}
	BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] or {}
	--Create the RedtuzkUI profile
	BigWigsClassicDB["profiles"]["RedtuzkUI Classic"] = BigWigsClassicDB["profiles"]["RedtuzkUI Classic"] or {}


	--Its important that all of these follow the format BigWigsClassicDB["namespaces"][*BigWigs Plugin Name*]["profiles"][*Profile Name*] = {}
	--If not it will probably wipe out all other BigWigs profiles
    BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["RedtuzkUI Classic"] = {
			["outline"] = "OUTLINE",
			["BWEmphasizeCountdownMessageAnchor_x"] = 666.311151171678,
			["BWEmphasizeMessageAnchor_y"] = 609.422525115158,
			["BWMessageAnchor_y"] = 576.711248292879,
			["BWMessageAnchor_x"] = 613.68927189563,
			["fontName"] = "Gilroy Bold",
			["BWEmphasizeCountdownMessageAnchor_y"] = 539.022765734932,
			["BWEmphasizeMessageAnchor_x"] = 611.555724894555,
		}

    BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["RedtuzkUI Classic"] = {
			["posx"] = 1090.13414098292,
			["posy"] = 85.3326678178437,
		}
    BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI Classic"] = {
			["outline"] = "OUTLINE",
			["BigWigsAnchor_width"] = 185.999710083008,
			["BigWigsAnchor_x"] = 1218.13333259654,
			["BigWigsEmphasizeAnchor_height"] = 22.0000019073486,
			["fontName"] = "Gilroy Bold",
			["BigWigsAnchor_height"] = 22.9999446868897,
			["fontSize"] = 12,
			["BigWigsAnchor_y"] = 191.289348428913,
			["emphasizeGrowup"] = true,
			["spacing"] = 4,
			["texture"] = "REEEE",
			["barStyle"] = "ElvUI",
			["BigWigsEmphasizeAnchor_width"] = 215.000030517578,
			["BigWigsEmphasizeAnchor_x"] = 401.777842094074,
			["BigWigsEmphasizeAnchor_y"] = 304.355946274562,
		}
    BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"]["RedtuzkUI Classic"] = {
			["outline"] = "OUTLINE",
			["fontName"] = "Gilroy Bold",
			["fontSize"] = 50,
		}
    BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["RedtuzkUI Classic"] = {
			["fontSize"] = 18,
			["fontName"] = "Gilroy Bold",
			["width"] = 197.000061035156,
			["posy"] = 467.199657892568,
			["lock"] = true,
			["height"] = 194.000106811523,
			["posx"] = 237.510651805802,
		}
	--This is the only settings that BigWigs actually stores under the profile, shouldn't ever need to be changed
    BigWigsClassicDB["profiles"]["RedtuzkUI Classic"]["fakeDBMVersion"] = true

    if layout == "8x2" then
			BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI Classic"]["BigWigsEmphasizeAnchor_x"] = 401.066589572693
			BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI Classic"]["BigWigsEmphasizeAnchor_y"] = 302.932516015881
	elseif layout == "healer" then
		BigWigsClassicDB["profiles"]["RedtuzkUI_Healer"] = BigWigsClassicDB["profiles"]["RedtuzkUI_Healer"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Alt Power"]["profiles"]["RedtuzkUI_Healer"] = {
			["posx"] = 1031.11096246772,
			["fontSize"] = 12,
			["fontOutline"] = "OUTLINE",
			["posy"] = 157.154539395679,
			["fontName"] = "Gilroy Bold",
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI_Healer"] = {
			["outline"] = "OUTLINE",
			["BigWigsAnchor_width"] = 184.999557495117,
			["BigWigsAnchor_x"] = 1215.99989298239,
			["fill"] = false,
			["BigWigsEmphasizeAnchor_height"] = 21.0000267028809,
			["fontName"] = "Gilroy Bold",
			["BigWigsAnchor_height"] = 14.9999361038208,
			["fontSize"] = 12,
			["BigWigsAnchor_y"] = 171.377211577363,
			["emphasizeGrowup"] = true,
			["emphasizeTime"] = 12,
			["barStyle"] = "AddOnSkins Half-Bar",
			["BigWigsEmphasizeAnchor_width"] = 202.000152587891,
			["BigWigsEmphasizeAnchor_x"] = 429.511121511459,
			["BigWigsEmphasizeAnchor_y"] = 307.199182785862,
			["texture"] = "ElvUI Norm",
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["RedtuzkUI_Healer"] = {
			["posx"] = 1090.84464446969,
			["posy"] = 85.3333191235856,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["RedtuzkUI_Healer"] = {
			["posx"] = 2.13330727550655,
			["fontSize"] = 20,
			["soundName"] = "None",
			["lock"] = true,
			["height"] = 272.999877929688,
			["posy"] = 765.866598406101,
			["fontName"] = "Gilroy Bold",
			["width"] = 221.000091552734,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["RedtuzkUI_Healer"] = {
			["outline"] = "OUTLINE",
			["BWEmphasizeMessageAnchor_x"] = 616.533521873425,
			["BWEmphasizeCountdownMessageAnchor_x"] = 671.288948546517,
			["BWMessageAnchor_x"] = 615.822367342316,
			["chat"] = false,
			["BWEmphasizeCountdownMessageAnchor_y"] = 531.911123991013,
			["fontName"] = "Gilroy Bold",
			["BWEmphasizeMessageAnchor_y"] = 596.622236669064,
			["BWMessageAnchor_y"] = 583.822149553562,
			["fontSize"] = 22,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"]["RedtuzkUI_Healer"] = {
			["barBackground"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.501960784313726, -- [1]
						0.501960784313726, -- [2]
						0.501960784313726, -- [3]
						0, -- [4]
					},
				},
			},
			["barTextShadow"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0, -- [4]
					},
				},
			},
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"]["RedtuzkUI_Healer"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 36,
			["fontName"] = "Gilroy Bold",
	}
	BigWigsClassicDB["profiles"]["RedtuzkUI_Healer"]["fakeDBMVersion"] = true
    end
end

function RUI:BigWigsFresh(layout)
	if layout == "healer" then
		profile = "RedtuzkUI_Healer"
	else
		profile = "RedtuzkUI"
	end
	BigWigsClassicDB = {
		["namespaces"] = {
			["BigWigs_Plugins_Alt Power"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Messages"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Sounds"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Colors"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Proximity"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_InfoBox"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Bars"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Super Emphasize"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Pull"] = {
				["profiles"] = {
					profile = {},
				},
			},
		},
	}
	BigWigsClassicDB["profiles"] = {}
end
