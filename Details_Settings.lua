local RUI = select(2, ...):unpack()

function RUI:DetailsSettings(layout)
	if layout == "healer" then
		_detalhes_global["__profiles"]["RedtuzkUI_Healer"] = {
			["show_arena_role_icon"] = false,
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["player_details_window"] = {
				["scale"] = 1,
				["skin"] = "ElvUI",
				["bar_texture"] = "Skyline",
			},
			["all_players_are_group"] = false,
			["use_row_animations"] = true,
			["report_heal_links"] = false,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["minimum_overall_combat_time"] = 10,
			["event_tracker"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["line_height"] = 16,
				["line_color"] = {
					0.1, -- [1]
					0.1, -- [2]
					0.1, -- [3]
					0.3, -- [4]
				},
				["font_shadow"] = "NONE",
				["font_size"] = 10,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = true,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.2, -- [4]
					},
					["locked"] = false,
					["height"] = 300,
					["width"] = 250,
				},
				["line_texture"] = "Details Serenity",
				["options_frame"] = {
				},
			},
			["report_to_who"] = "",
			["class_specs_coords"] = {
				[62] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[63] = {
					0.375, -- [1]
					0.5, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[250] = {
					0, -- [1]
					0.125, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[251] = {
					0.125, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[252] = {
					0.25, -- [1]
					0.375, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[253] = {
					0.875, -- [1]
					1, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[254] = {
					0, -- [1]
					0.125, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[255] = {
					0.125, -- [1]
					0.25, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[66] = {
					0.125, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[257] = {
					0.5, -- [1]
					0.625, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[258] = {
					0.6328125, -- [1]
					0.75, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[259] = {
					0.75, -- [1]
					0.875, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[260] = {
					0.875, -- [1]
					1, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[577] = {
					0.25, -- [1]
					0.375, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[262] = {
					0.125, -- [1]
					0.25, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[581] = {
					0.375, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[264] = {
					0.375, -- [1]
					0.5, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[265] = {
					0.5, -- [1]
					0.625, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[266] = {
					0.625, -- [1]
					0.75, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[267] = {
					0.75, -- [1]
					0.875, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[268] = {
					0.625, -- [1]
					0.75, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[269] = {
					0.875, -- [1]
					1, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[270] = {
					0.75, -- [1]
					0.875, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[70] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[102] = {
					0.375, -- [1]
					0.5, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[71] = {
					0.875, -- [1]
					1, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[103] = {
					0.5, -- [1]
					0.625, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[72] = {
					0, -- [1]
					0.125, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[104] = {
					0.625, -- [1]
					0.75, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[73] = {
					0.125, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[64] = {
					0.5, -- [1]
					0.625, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[105] = {
					0.75, -- [1]
					0.875, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[65] = {
					0, -- [1]
					0.125, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[256] = {
					0.375, -- [1]
					0.5, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[261] = {
					0, -- [1]
					0.125, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[263] = {
					0.25, -- [1]
					0.375, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
			},
			["profile_save_pos"] = true,
			["tooltip"] = {
				["header_statusbar"] = {
					0.3, -- [1]
					0.3, -- [2]
					0.3, -- [3]
					0.8, -- [4]
					false, -- [5]
					false, -- [6]
					"WorldState Score", -- [7]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["line_height"] = 17,
				["tooltip_max_targets"] = 2,
				["icon_size"] = {
					["W"] = 17,
					["H"] = 17,
				},
				["tooltip_max_pets"] = 2,
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["show_amount"] = false,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["fontsize"] = 12,
				["background"] = {
					0.196078431372549, -- [1]
					0.196078431372549, -- [2]
					0.196078431372549, -- [3]
					0.8, -- [4]
				},
				["submenu_wallpaper"] = true,
				["fontsize_title"] = 10,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["commands"] = {
				},
				["tooltip_max_abilities"] = 6,
				["fontface"] = "Gilroy Bold",
				["border_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Redtuzk's Pixelborder",
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
				["maximize_method"] = 1,
				["border_size"] = 1,
				["fontshadow"] = true,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["menus_bg_coords"] = {
					0.31, -- [1]
					0.924000015258789, -- [2]
					0.213000011444092, -- [3]
					0.279000015258789, -- [4]
				},
				["icon_border_texcoord"] = {
					["R"] = 0.921875,
					["L"] = 0.078125,
					["T"] = 0.078125,
					["B"] = 0.921875,
				},
				["menus_bg_color"] = {
					0.799998223781586, -- [1]
					0.799998223781586, -- [2]
					0.799998223781586, -- [3]
					0.200000017881393, -- [4]
				},
			},
			["ps_abbreviation"] = 3,
			["world_combat_is_trash"] = false,
			["pvp_as_group"] = true,
			["bookmark_text_size"] = 11,
			["animation_speed_mintravel"] = 0.45,
			["track_item_level"] = true,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["instances_menu_click_to_open"] = false,
			["overall_clear_newchallenge"] = true,
			["current_dps_meter"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["arena_enabled"] = true,
				["font_shadow"] = "NONE",
				["font_size"] = 18,
				["mythic_dungeon_enabled"] = true,
				["sample_size"] = 5,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = false,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.2, -- [4]
					},
					["locked"] = false,
					["height"] = 65,
					["width"] = 220,
				},
				["update_interval"] = 0.1,
				["options_frame"] = {
				},
			},
			["data_cleanup_logout"] = false,
			["instances_disable_bar_highlight"] = true,
			["trash_concatenate"] = false,
			["color_by_arena_team"] = true,
			["animation_speed"] = 33,
			["disable_stretch_from_toolbar"] = false,
			["disable_lock_ungroup_buttons"] = false,
			["memory_ram"] = 64,
			["disable_window_groups"] = false,
			["instances_suppress_trash"] = 0,
			["options_window"] = {
				["scale"] = 1,
			},
			["animation_speed_maxtravel"] = 3,
			["deny_score_messages"] = false,
			["deadlog_limit"] = 16,
			["font_faces"] = {
				["menus"] = "Gilroy Bold",
			},
			["instances_segments_locked"] = false,
			["instances_no_libwindow"] = false,
			["data_broker_text"] = "",
			["instances"] = {
				{
					["__snapV"] = false,
					["__pos"] = {
						["normal"] = {
							["y"] = -419.893672586469,
							["x"] = 830.055168072838,
							["w"] = 216.075897216797,
							["h"] = 200.231231689453,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["show_statusbar"] = false,
					["menu_icons_size"] = 1.25,
					["color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["menu_anchor"] = {
						17, -- [1]
						7, -- [2]
						["side"] = 2,
					},
					["__snapH"] = false,
					["switch_tank_in_combat"] = false,
					["bg_r"] = 0,
					["ignore_mass_showhide"] = false,
					["__was_opened"] = true,
					["hide_out_of_combat"] = false,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
					["skin_custom"] = "",
					["hide_in_combat_type"] = 1,
					["menu_anchor_down"] = {
						15, -- [1]
						-3, -- [2]
					},
					["stretch_button_side"] = 1,
					["switch_damager_in_combat"] = false,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textXMod"] = 0,
								["textFace"] = "Accidental Presidency",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["segmentType"] = 2,
								["textXMod"] = 0,
								["textFace"] = "Accidental Presidency",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textFace"] = "Accidental Presidency",
								["textXMod"] = 6,
								["textAlign"] = 0,
								["timeType"] = 1,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
					},
					["attribute_text"] = {
						["show_timer"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
						["shadow"] = true,
						["side"] = 1,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.7, -- [4]
						},
						["custom_text"] = "{name}",
						["text_face"] = "Expressway",
						["anchor"] = {
							-17, -- [1]
							2, -- [2]
						},
						["text_size"] = 12,
						["enable_custom_text"] = false,
						["enabled"] = false,
					},
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["version"] = 3,
					["row_info"] = {
						["textR_outline"] = true,
						["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
						["textL_outline"] = true,
						["textR_outline_small"] = true,
						["textR_show_data"] = {
							true, -- [1]
							true, -- [2]
							false, -- [3]
						},
						["textL_enable_custom_text"] = false,
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["texture_background_class_color"] = false,
						["start_after_icon"] = false,
						["font_face_file"] = "Interface\\Addons\\ElvUI_Redtuzk\\Media\\GOTHICB.TTF",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["font_size"] = 12,
						["height"] = 24,
						["texture_file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\normTex2",
						["textR_bracket"] = "(",
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["icon_grayscale"] = false,
						["models"] = {
							["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
							["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
							["upper_alpha"] = 0.5,
							["lower_enabled"] = false,
							["lower_alpha"] = 0.1,
							["upper_enabled"] = false,
						},
						["use_spec_icons"] = true,
						["texture_custom"] = "",
						["backdrop"] = {
							["enabled"] = true,
							["texture"] = "1 Pixel",
							["color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["size"] = 1,
						},
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0, -- [4]
						},
						["textL_show_number"] = false,
						["texture"] = "REEEE",
						["texture_background_file"] = "Interface\\AddOns\\ElvUI_Redtuzk\\Media\\secret test texture",
						["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.333250463008881, -- [4]
						},
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["percent_type"] = 1,
						["textL_outline_small"] = true,
						["textL_class_colors"] = false,
						["alpha"] = 0,
						["texture_background"] = "REEEE",
						["textR_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["no_icon"] = false,
						["textR_class_colors"] = false,
						["textR_enable_custom_text"] = false,
						["font_face"] = "Gilroy Bold",
						["texture_class_colors"] = true,
						["textL_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["fast_ps_update"] = true,
						["textR_separator"] = "NONE",
						["texture_custom_file"] = "Interface\\",
					},
					["__locked"] = true,
					["menu_alpha"] = {
						["enabled"] = false,
						["onleave"] = 1,
						["ignorebars"] = false,
						["iconstoo"] = true,
						["onenter"] = 1,
					},
					["switch_healer"] = false,
					["grab_on_top"] = false,
					["bg_alpha"] = 0,
					["strata"] = "LOW",
					["bars_grow_direction"] = 1,
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["plugins_grow_direction"] = 1,
					["menu_icons"] = {
						false, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						false, -- [5]
						false, -- [6]
						["space"] = 0,
						["shadow"] = false,
					},
					["switch_damager"] = false,
					["auto_hide_menu"] = {
						["left"] = true,
						["right"] = false,
					},
					["statusbar_info"] = {
						["alpha"] = 0,
						["overlay"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
					},
					["window_scale"] = 0.990000009536743,
					["libwindow"] = {
						["y"] = 21.0003540536163,
						["x"] = -23.0023315793078,
						["point"] = "BOTTOMRIGHT",
						["scale"] = 0.990000009536743,
					},
					["switch_healer_in_combat"] = false,
					["backdrop_texture"] = "ElvUI Blank",
					["hide_icon"] = true,
					["bg_b"] = 0,
					["show_sidebars"] = false,
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0,
					["skin"] = "Serenity",
					["hide_in_combat"] = false,
					["posicao"] = {
						["normal"] = {
							["y"] = -419.893672586469,
							["x"] = 830.055168072838,
							["w"] = 216.075897216797,
							["h"] = 200.231231689453,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["switch_all_roles_after_wipe"] = false,
					["micro_displays_side"] = 2,
					["wallpaper"] = {
						["enabled"] = false,
						["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
						["texcoord"] = {
							0.0480000019073486, -- [1]
							0.298000011444092, -- [2]
							0.630999984741211, -- [3]
							0.755999984741211, -- [4]
						},
						["overlay"] = {
							0.999997794628143, -- [1]
							0.999997794628143, -- [2]
							0.999997794628143, -- [3]
							0.266666084527969, -- [4]
						},
						["anchor"] = "all",
						["height"] = 225.999984741211,
						["alpha"] = 0.266666680574417,
						["width"] = 266.000061035156,
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = false,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["bars_sort_direction"] = 1,
					["desaturated_menu"] = false,
					["micro_displays_locked"] = true,
					["bars_inverted"] = false,
				}, -- [1]
			},
			["report_lines"] = 2,
			["segments_amount"] = 12,
			["use_battleground_server_parser"] = true,
			["skin"] = "WoW Interface",
			["override_spellids"] = true,
			["death_tooltip_width"] = 350,
			["report_schema"] = 1,
			["use_scroll"] = false,
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["minimum_combat_time"] = 5,
			["font_sizes"] = {
				["menus"] = 12,
			},
			["cloud_capture"] = true,
			["damage_taken_everything"] = false,
			["scroll_speed"] = 2,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["chat_tab_embed"] = {
				["enabled"] = false,
				["y_offset"] = 0,
				["x_offset"] = 0,
				["w1_pos"] = {
					["y"] = 12.859322872059,
					["h"] = 174.978988647461,
					["point"] = "BOTTOMRIGHT",
					["x"] = -9.00015371033805,
					["x_legacy"] = 752.042164843242,
					["pos_table"] = true,
					["w"] = 401.934600830078,
					["y_legacy"] = -440.526022616289,
				},
				["tab_name"] = "",
				["single_window"] = false,
			},
			["deadlog_events"] = 32,
			["remove_realm_from_name"] = true,
			["close_shields"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONK"] = {
					0.5, -- [1]
					0.73828125, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["DEMONHUNTER"] = {
					0.73828126, -- [1]
					1, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["disable_alldisplays_window"] = false,
			["standard_skin"] = {
				["hide_in_combat_type"] = 1,
				["menu_icons_size"] = 0.800000011920929,
				["color"] = {
					0.211764705882353, -- [1]
					0.282352941176471, -- [2]
					0.568627450980392, -- [3]
					1, -- [4]
				},
				["menu_anchor"] = {
					17, -- [1]
					-1, -- [2]
					["side"] = 2,
				},
				["bg_r"] = 0,
				["hide_out_of_combat"] = false,
				["following"] = {
					["bar_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["enabled"] = false,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
				},
				["color_buttons"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["switch_healer"] = false,
				["skin_custom"] = "",
				["bars_inverted"] = false,
				["switch_tank_in_combat"] = false,
				["statusbar_info"] = {
					["alpha"] = 1,
					["overlay"] = {
						0.211764705882353, -- [1]
						0.282352941176471, -- [2]
						0.568627450980392, -- [3]
					},
				},
				["tooltip"] = {
					["n_abilities"] = 3,
					["n_enemies"] = 3,
				},
				["bars_sort_direction"] = 1,
				["total_bar"] = {
					["enabled"] = false,
					["only_in_group"] = false,
					["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
					["color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
				},
				["switch_all_roles_in_combat"] = false,
				["instance_button_anchor"] = {
					-27, -- [1]
					1, -- [2]
				},
				["version"] = 3,
				["row_info"] = {
					["textR_outline"] = true,
					["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
					["textL_outline"] = true,
					["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
					["textR_show_data"] = {
						true, -- [1]
						true, -- [2]
						false, -- [3]
					},
					["percent_type"] = 1,
					["fixed_text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["space"] = {
						["right"] = 0,
						["left"] = 0,
						["between"] = 1,
					},
					["texture_background_class_color"] = false,
					["start_after_icon"] = false,
					["font_face_file"] = "Interface\\AddOns\\Redtuzk's Pixelborder\\Expressway.ttf",
					["backdrop"] = {
						["enabled"] = false,
						["size"] = 1,
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["texture"] = "Redtuzk's Pixelborder",
					},
					["font_size"] = 12,
					["height"] = 18,
					["texture_file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\normTex2.tga",
					["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
					["textR_bracket"] = "(",
					["textR_enable_custom_text"] = false,
					["fixed_texture_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["textL_show_number"] = false,
					["use_spec_icons"] = true,
					["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
					["texture"] = "REEEE",
					["texture_custom_file"] = "Interface\\",
					["models"] = {
						["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
						["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
						["upper_alpha"] = 0.5,
						["lower_enabled"] = false,
						["lower_alpha"] = 0.1,
						["upper_enabled"] = false,
					},
					["textR_class_colors"] = false,
					["texture_custom"] = "",
					["fixed_texture_background_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["textL_class_colors"] = false,
					["alpha"] = 0,
					["no_icon"] = false,
					["texture_background_file"] = "Interface\\AddOns\\ElvUI_Redtuzk\\Media\\secret test texture",
					["texture_background"] = "REEEE",
					["font_face"] = "Expressway",
					["texture_class_colors"] = true,
					["textL_enable_custom_text"] = false,
					["fast_ps_update"] = false,
					["textR_separator"] = "NONE",
					["textL_custom_text"] = "{data1}. {data3}{data2}",
				},
				["skin"] = "Serenity",
				["menu_alpha"] = {
					["enabled"] = false,
					["onenter"] = 1,
					["iconstoo"] = true,
					["ignorebars"] = false,
					["onleave"] = 1,
				},
				["micro_displays_side"] = 2,
				["show_statusbar"] = false,
				["switch_damager"] = false,
				["strata"] = "LOW",
				["show_sidebars"] = false,
				["row_show_animation"] = {
					["anim"] = "Fade",
					["options"] = {
					},
				},
				["ignore_mass_showhide"] = false,
				["hide_in_combat_alpha"] = 0,
				["plugins_grow_direction"] = 1,
				["menu_icons"] = {
					false, -- [1]
					false, -- [2]
					false, -- [3]
					false, -- [4]
					false, -- [5]
					false, -- [6]
					["space"] = 0,
					["shadow"] = false,
				},
				["libwindow"] = {
					["y"] = 57.0018661805152,
					["x"] = -131.002794028114,
					["point"] = "BOTTOMRIGHT",
				},
				["auto_hide_menu"] = {
					["left"] = false,
					["right"] = false,
				},
				["bars_grow_direction"] = 1,
				["window_scale"] = 0.998821496963501,
				["switch_healer_in_combat"] = false,
				["bg_alpha"] = 0.940000001341105,
				["switch_damager_in_combat"] = false,
				["hide_icon"] = true,
				["micro_displays_locked"] = true,
				["grab_on_top"] = false,
				["auto_current"] = true,
				["toolbar_side"] = 1,
				["bg_g"] = 0.0509803921568627,
				["menu_anchor_down"] = {
					15, -- [1]
					-3, -- [2]
				},
				["hide_in_combat"] = false,
				["desaturated_menu"] = false,
				["switch_all_roles_after_wipe"] = false,
				["backdrop_texture"] = "Details Ground",
				["wallpaper"] = {
					["overlay"] = {
						0.999997794628143, -- [1]
						0.999997794628143, -- [2]
						0.999997794628143, -- [3]
						0.266666084527969, -- [4]
					},
					["width"] = 266.000061035156,
					["texcoord"] = {
						0.0480000019073486, -- [1]
						0.298000011444092, -- [2]
						0.630999984741211, -- [3]
						0.755999984741211, -- [4]
					},
					["enabled"] = false,
					["anchor"] = "all",
					["height"] = 225.999984741211,
					["alpha"] = 0.266666680574417,
					["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
				},
				["stretch_button_side"] = 1,
				["switch_tank"] = false,
				["attribute_text"] = {
					["show_timer"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
					["shadow"] = false,
					["side"] = 1,
					["text_size"] = 12,
					["custom_text"] = "{name}",
					["text_face"] = "Accidental Presidency",
					["anchor"] = {
						-17, -- [1]
						2, -- [2]
					},
					["enabled"] = true,
					["enable_custom_text"] = false,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.7, -- [4]
					},
				},
				["name"] = "",
				["bg_b"] = 0.454901960784314,
			},
			["total_abbreviation"] = 2,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["segments_amount_to_save"] = 5,
			["clear_graphic"] = true,
			["trash_auto_remove"] = true,
			["animation_speed_triggertravel"] = 5,
			["options_group_edit"] = false,
			["broadcaster_enabled"] = false,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["hide"] = true,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["text_type"] = 1,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["numerical_system_symbols"] = "auto",
			["only_pvp_frags"] = false,
			["disable_stretch_button"] = true,
			["default_bg_color"] = 0.0941,
			["segments_auto_erase"] = 1,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_YELLOW"] = {
					0.9, -- [1]
					0.9, -- [2]
					0, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["MONK"] = {
					0, -- [1]
					1, -- [2]
					0.59, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["DEMONHUNTER"] = {
					0.64, -- [1]
					0.19, -- [2]
					0.79, -- [3]
				},
				["version"] = 1,
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["ARENA_GREEN"] = {
					0.1, -- [1]
					0.85, -- [2]
					0.1, -- [3]
				},
			},
			["segments_panic_mode"] = false,
			["time_type_original"] = 2,
			["numerical_system"] = 1,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["memory_threshold"] = 3,
			["overall_clear_logout"] = false,
			["overall_flag"] = 15,
			["force_activity_time_pvp"] = true,
			["overall_clear_newboss"] = true,
			["clear_ungrouped"] = true,
			["disable_reset_button"] = false,
			["animate_scroll"] = false,
			["update_speed"] = 0.0500000007450581,
			["time_type"] = 2,
			["default_bg_alpha"] = 0.5,
			["streamer_config"] = {
				["faster_updates"] = false,
				["quick_detection"] = false,
				["reset_spec_cache"] = false,
				["no_alerts"] = false,
				["use_animation_accel"] = true,
				["disable_mythic_dungeon"] = false,
			},
		}
	else
	_detalhes_global["__profiles"]["RedtuzkUI"] = {
			["show_arena_role_icon"] = false,
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["streamer_config"] = {
				["faster_updates"] = false,
				["quick_detection"] = false,
				["reset_spec_cache"] = false,
				["no_alerts"] = false,
				["disable_mythic_dungeon"] = false,
				["use_animation_accel"] = true,
			},
			["all_players_are_group"] = false,
			["use_row_animations"] = true,
			["report_heal_links"] = false,
			["remove_realm_from_name"] = true,
			["minimum_overall_combat_time"] = 10,
			["event_tracker"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["line_height"] = 16,
				["line_color"] = {
					0.1, -- [1]
					0.1, -- [2]
					0.1, -- [3]
					0.3, -- [4]
				},
				["font_shadow"] = "NONE",
				["font_size"] = 10,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = true,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0.16, -- [1]
						0.16, -- [2]
						0.16, -- [3]
						0.47, -- [4]
					},
					["locked"] = false,
					["height"] = 300,
					["width"] = 250,
				},
				["line_texture"] = "Details Serenity",
				["options_frame"] = {
				},
			},
			["report_to_who"] = "",
			["class_specs_coords"] = {
				[62] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[63] = {
					0.375, -- [1]
					0.5, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[250] = {
					0, -- [1]
					0.125, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[251] = {
					0.125, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[252] = {
					0.25, -- [1]
					0.375, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[253] = {
					0.875, -- [1]
					1, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[254] = {
					0, -- [1]
					0.125, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[255] = {
					0.125, -- [1]
					0.25, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[66] = {
					0.125, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[257] = {
					0.5, -- [1]
					0.625, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[258] = {
					0.6328125, -- [1]
					0.75, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[259] = {
					0.75, -- [1]
					0.875, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[260] = {
					0.875, -- [1]
					1, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[577] = {
					0.25, -- [1]
					0.375, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[262] = {
					0.125, -- [1]
					0.25, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[581] = {
					0.375, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[264] = {
					0.375, -- [1]
					0.5, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[265] = {
					0.5, -- [1]
					0.625, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[266] = {
					0.625, -- [1]
					0.75, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[267] = {
					0.75, -- [1]
					0.875, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[268] = {
					0.625, -- [1]
					0.75, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[269] = {
					0.875, -- [1]
					1, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[270] = {
					0.75, -- [1]
					0.875, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[70] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[102] = {
					0.375, -- [1]
					0.5, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[71] = {
					0.875, -- [1]
					1, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[103] = {
					0.5, -- [1]
					0.625, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[72] = {
					0, -- [1]
					0.125, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[104] = {
					0.625, -- [1]
					0.75, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[73] = {
					0.125, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[64] = {
					0.5, -- [1]
					0.625, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[105] = {
					0.75, -- [1]
					0.875, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[65] = {
					0, -- [1]
					0.125, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[256] = {
					0.375, -- [1]
					0.5, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[261] = {
					0, -- [1]
					0.125, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[263] = {
					0.25, -- [1]
					0.375, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
			},
			["profile_save_pos"] = true,
			["tooltip"] = {
				["header_statusbar"] = {
					0.3, -- [1]
					0.3, -- [2]
					0.3, -- [3]
					0.8, -- [4]
					false, -- [5]
					false, -- [6]
					"WorldState Score", -- [7]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["line_height"] = 17,
				["tooltip_max_targets"] = 2,
				["icon_size"] = {
					["W"] = 17,
					["H"] = 17,
				},
				["tooltip_max_pets"] = 2,
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["show_amount"] = false,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["fontsize"] = 10,
				["background"] = {
					0.196, -- [1]
					0.196, -- [2]
					0.196, -- [3]
					0.8, -- [4]
				},
				["submenu_wallpaper"] = true,
				["fontsize_title"] = 10,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["commands"] = {
				},
				["tooltip_max_abilities"] = 6,
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Details BarBorder 3",
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontshadow"] = false,
				["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
				["border_size"] = 14,
				["maximize_method"] = 1,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["menus_bg_coords"] = {
					0.309777336120606, -- [1]
					0.924000015258789, -- [2]
					0.213000011444092, -- [3]
					0.279000015258789, -- [4]
				},
				["icon_border_texcoord"] = {
					["R"] = 0.921875,
					["L"] = 0.078125,
					["T"] = 0.078125,
					["B"] = 0.921875,
				},
				["menus_bg_color"] = {
					0.8, -- [1]
					0.8, -- [2]
					0.8, -- [3]
					0.2, -- [4]
				},
			},
			["ps_abbreviation"] = 3,
			["world_combat_is_trash"] = false,
			["update_speed"] = 0.199999988079071,
			["bookmark_text_size"] = 11,
			["animation_speed_mintravel"] = 0.45,
			["track_item_level"] = true,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["instances_menu_click_to_open"] = false,
			["overall_clear_newchallenge"] = true,
			["current_dps_meter"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["arena_enabled"] = true,
				["font_shadow"] = "NONE",
				["font_size"] = 18,
				["mythic_dungeon_enabled"] = true,
				["sample_size"] = 5,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = false,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.2, -- [4]
					},
					["locked"] = false,
					["height"] = 65,
					["width"] = 220,
				},
				["update_interval"] = 0.3,
				["options_frame"] = {
				},
			},
			["data_cleanup_logout"] = false,
			["instances_disable_bar_highlight"] = false,
			["trash_concatenate"] = false,
			["color_by_arena_team"] = true,
			["animation_speed"] = 33,
			["disable_stretch_from_toolbar"] = false,
			["disable_lock_ungroup_buttons"] = false,
			["memory_ram"] = 64,
			["disable_window_groups"] = false,
			["instances_suppress_trash"] = 0,
			["instances_segments_locked"] = false,
			["options_window"] = {
				["scale"] = 1,
			},
			["animation_speed_maxtravel"] = 3,
			["deadlog_limit"] = 16,
			["instances_no_libwindow"] = false,
			["font_faces"] = {
				["menus"] = "Gilroy Bold",
			},
			["death_tooltip_width"] = 350,
			["data_broker_text"] = "",
			["segments_amount"] = 18,
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -419.384979248047,
							["x"] = 841.042236328125,
							["w"] = 214.055160522461,
							["h"] = 229.524124145508,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["clickthrough_window"] = false,
					["menu_anchor"] = {
						17, -- [1]
						7, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0,
					["hide_out_of_combat"] = false,
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
					["micro_displays_locked"] = true,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["switch_all_roles_in_combat"] = false,
					["clickthrough_toolbaricons"] = false,
					["clickthrough_rows"] = false,
					["ignore_mass_showhide"] = false,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						false, -- [1]
						true, -- [2]
						false, -- [3]
						true, -- [4]
						false, -- [5]
						false, -- [6]
						["space"] = -2,
						["shadow"] = false,
					},
					["switch_damager"] = false,
					["micro_displays_side"] = 2,
					["window_scale"] = 1,
					["hide_icon"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0,
					["bg_b"] = 0,
					["switch_healer_in_combat"] = false,
					["color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["skin"] = "Serenity",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["switch_healer"] = false,
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["textXMod"] = 0,
								["textFace"] = "Accidental Presidency",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
							["DETAILS_STATUSBAR_PLUGIN_PATTRIBUTE"] = {
								["isHidden"] = false,
								["textStyle"] = 2,
								["textYMod"] = 0,
								["segmentType"] = 2,
								["textFace"] = "Accidental Presidency",
								["textXMod"] = 0,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["timeType"] = 1,
								["textXMod"] = 6,
								["textAlign"] = 0,
								["textFace"] = "Accidental Presidency",
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PATTRIBUTE",
					},
					["switch_tank_in_combat"] = false,
					["bg_alpha"] = 0,
					["__snapV"] = false,
					["__locked"] = true,
					["menu_alpha"] = {
						["enabled"] = false,
						["onleave"] = 1,
						["ignorebars"] = false,
						["iconstoo"] = true,
						["onenter"] = 1,
					},
					["__snapH"] = false,
					["show_statusbar"] = false,
					["__was_opened"] = true,
					["strata"] = "LOW",
					["clickthrough_incombatonly"] = true,
					["__snap"] = {
					},
					["backdrop_texture"] = "ElvUI Blank",
					["hide_in_combat_alpha"] = 0,
					["switch_damager_in_combat"] = false,
					["plugins_grow_direction"] = 1,
					["libwindow"] = {
						["y"] = 5.85288619995117,
						["x"] = -11.9300537109375,
						["point"] = "BOTTOMRIGHT",
						["scale"] = 1,
					},
					["statusbar_info"] = {
						["alpha"] = 0,
						["overlay"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
					},
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["bars_grow_direction"] = 1,
					["stretch_button_side"] = 1,
					["bars_sort_direction"] = 1,
					["show_sidebars"] = false,
					["grab_on_top"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["menu_anchor_down"] = {
						15, -- [1]
						-3, -- [2]
					},
					["auto_current"] = true,
					["version"] = 3,
					["attribute_text"] = {
						["enabled"] = false,
						["shadow"] = true,
						["side"] = 1,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.7, -- [4]
						},
						["custom_text"] = "{name}",
						["text_face"] = "Gilroy Bold",
						["anchor"] = {
							-17, -- [1]
							2, -- [2]
						},
						["text_size"] = 12,
						["enable_custom_text"] = false,
						["show_timer"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["row_info"] = {
						["textR_outline"] = true,
						["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
						["textL_outline"] = true,
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textR_show_data"] = {
							true, -- [1]
							true, -- [2]
							false, -- [3]
						},
						["percent_type"] = 1,
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["texture_background_class_color"] = false,
						["textL_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["font_face_file"] = "Interface\\Addons\\ElvUI_RedtuzkClassic\\Media\\Gilroy-Bold.TTF",
						["backdrop"] = {
							["enabled"] = true,
							["texture"] = "1 Pixel",
							["color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["size"] = 1,
						},
						["font_size"] = 12,
						["textL_translit_text"] = false,
						["texture_custom_file"] = "Interface\\",
						["texture_file"] = "Interface\\Addons\\ElvUI_RedtuzkClassic\\Media\\secret test texture.tga",
						["texture_background_file"] = "Interface\\Addons\\ElvUI_RedtuzkClassic\\Media\\secret test texture.tga",
						["use_spec_icons"] = false,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["icon_grayscale"] = false,
						["models"] = {
							["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
							["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
							["upper_alpha"] = 0.5,
							["lower_enabled"] = false,
							["lower_alpha"] = 0.1,
							["upper_enabled"] = false,
						},
						["textR_bracket"] = "(",
						["texture_custom"] = "",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0, -- [4]
						},
						["textL_show_number"] = false,
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.333250463008881, -- [4]
						},
						["textL_enable_custom_text"] = false,
						["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
						["texture"] = "REEEE",
						["textR_outline_small"] = true,
						["textL_outline_small"] = true,
						["textR_class_colors"] = false,
						["alpha"] = 0,
						["texture_background"] = "REEEE",
						["textL_class_colors"] = false,
						["textR_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["no_icon"] = false,
						["icon_offset"] = {
							0, -- [1]
							0, -- [2]
						},
						["textR_enable_custom_text"] = false,
						["font_face"] = "Gilroy Bold",
						["texture_class_colors"] = true,
						["start_after_icon"] = false,
						["fast_ps_update"] = true,
						["textR_separator"] = "NONE",
						["height"] = 24,
					},
					["hide_in_combat"] = false,
					["posicao"] = {
						["normal"] = {
							["y"] = -419.384979248047,
							["x"] = 841.042236328125,
							["w"] = 214.055160522461,
							["h"] = 229.524124145508,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["auto_hide_menu"] = {
						["left"] = true,
						["right"] = false,
					},
					["desaturated_menu"] = false,
					["wallpaper"] = {
						["overlay"] = {
							0.999997794628143, -- [1]
							0.999997794628143, -- [2]
							0.999997794628143, -- [3]
							0.266666084527969, -- [4]
						},
						["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
						["texcoord"] = {
							0.0480000019073486, -- [1]
							0.298000011444092, -- [2]
							0.630999984741211, -- [3]
							0.755999984741211, -- [4]
						},
						["enabled"] = false,
						["anchor"] = "all",
						["height"] = 225.999984741211,
						["alpha"] = 0.266666680574417,
						["width"] = 266.000061035156,
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["switch_tank"] = false,
					["skin_custom"] = "",
					["bars_inverted"] = false,
					["menu_icons_size"] = 1.25,
				}, -- [1]
			},
			["report_lines"] = 5,
			["use_battleground_server_parser"] = false,
			["use_scroll"] = false,
			["skin"] = "WoW Interface",
			["override_spellids"] = true,
			["report_schema"] = 1,
			["overall_clear_newboss"] = true,
			["minimum_combat_time"] = 5,
			["new_window_size"] = {
				["height"] = 158,
				["width"] = 310,
			},
			["overall_clear_logout"] = false,
			["chat_tab_embed"] = {
				["enabled"] = false,
				["y_offset"] = 0,
				["x_offset"] = 0,
				["tab_name"] = "",
				["single_window"] = false,
			},
			["cloud_capture"] = true,
			["damage_taken_everything"] = false,
			["scroll_speed"] = 2,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["memory_threshold"] = 3,
			["deadlog_events"] = 32,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["close_shields"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONK"] = {
					0.5, -- [1]
					0.73828125, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DEMONHUNTER"] = {
					0.73828126, -- [1]
					1, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["force_class_icons"] = true,
			["disable_alldisplays_window"] = false,
			["standard_skin"] = false,
			["total_abbreviation"] = 2,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["Neutral"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["Ungroupplayer"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["Enemy"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["ARENA_YELLOW"] = {
					1, -- [1]
					1, -- [2]
					0.25, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["MONK"] = {
					0, -- [1]
					1, -- [2]
					0.59, -- [3]
				},
				["Shaman"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["Monk"] = {
					0, -- [1]
					1, -- [2]
					0.59, -- [3]
				},
				["Mage"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["Warlock"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["version"] = 1,
				["DEMONHUNTER"] = {
					0.64, -- [1]
					0.19, -- [2]
					0.79, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["Paladin"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["ARENA_GREEN"] = {
					0.4, -- [1]
					1, -- [2]
					0.4, -- [3]
				},
				["Hunter"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["Rogue"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["Warrior"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["Demonhunter"] = {
					0.64, -- [1]
					0.19, -- [2]
					0.79, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["Unknow"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["Arena_green"] = {
					0.4, -- [1]
					1, -- [2]
					0.4, -- [3]
				},
				["Pet"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["Druid"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["Version"] = 1,
				["Deathknight"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["Priest"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["Arena_yellow"] = {
					1, -- [1]
					1, -- [2]
					0.25, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
			},
			["segments_auto_erase"] = 1,
			["clear_graphic"] = true,
			["trash_auto_remove"] = true,
			["animation_speed_triggertravel"] = 5,
			["options_group_edit"] = true,
			["segments_amount_to_save"] = 18,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["hide"] = false,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["text_type"] = 1,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["deny_score_messages"] = false,
			["only_pvp_frags"] = false,
			["disable_stretch_button"] = true,
			["default_bg_color"] = 0.0941,
			["broadcaster_enabled"] = false,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["segments_panic_mode"] = false,
			["numerical_system_symbols"] = "auto",
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["player_details_window"] = {
				["scale"] = 1,
				["skin"] = "ElvUI",
				["bar_texture"] = "Skyline",
			},
			["numerical_system"] = 1,
			["pvp_as_group"] = true,
			["force_activity_time_pvp"] = true,
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["clear_ungrouped"] = true,
			["disable_reset_button"] = false,
			["animate_scroll"] = false,
			["time_type"] = 2,
			["time_type_original"] = 2,
			["default_bg_alpha"] = 0.5,
			["overall_flag"] = 16,
		}
	end
end
