local mod = get_mod("Power_DI")

return {
	name = "Power DI",
	description = mod:localize("mod_description"),
	is_togglable = true,
    allow_rehooking = true,
	options = {
        widgets = {
            {
                setting_id = "open_pdi_view",
                title = "open_pdi_view_title",
                tooltip = "open_pdi_view_tooltip",
                type = "keybind",
                default_value = {},
                keybind_trigger = "pressed",
                keybind_type = "function_call",
                function_name = "open_pdi_view"
            },
            {
                setting_id = "debug_dump",
                title = "debug_dump_title",
                tooltip = "debug_dump_tooltip",
                type = "keybind",
                default_value = {},
                keybind_trigger = "pressed",
                keybind_type = "function_call",
                function_name = "debug_dump"
            },
            {
                setting_id = "auto_save",
                title = "auto_save_title",
                tooltip = "auto_save_tooltip",
                type = "checkbox",
                default_value = true,
                sub_widgets = 
                {
                    {
                        setting_id = "auto_save_interval",
                        title = "auto_save_interval_title",
                        tooltip = "auto_save_interval_tooltip",
                        type = "numeric",
                        default_value = 60,
                        range = {10, 120},
                        unit_text = "seconds",
                        decimals_number = 0
                    }
                }
            },
            {
                setting_id = "max_cycles",
                title = "max_cycles_title",
                tooltip = "max_cycles_tooltip",
                type = "numeric",
                default_value = 1000,
                range = {0, 10000},
                unit_text = "cycles",
                decimals_number = 0
            },
            {
                setting_id = "debug_mode",
                title = "debug_mode_title",
                tooltip = "debug_mode_tooltip",
                type = "checkbox",
                default_value = false,
            },
		}
	}
}
