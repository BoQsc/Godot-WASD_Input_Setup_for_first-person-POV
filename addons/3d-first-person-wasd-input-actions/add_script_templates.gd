# filename: add_script_templates.gd
@tool
extends RefCounted

# Update "YOUR_ADDON_NAME" if your folder name is different
const ADDON_TEMPLATES = "res://addons/3d-first-person-wasd-input-actions/script_templates/"
const PROJECT_TEMPLATES = "res://script_templates/"

# Renamed from _enter_tree to be called manually
func install_templates():
	# Ensure project templates directory exists for CharacterBody3D
	if not DirAccess.dir_exists_absolute(PROJECT_TEMPLATES + "CharacterBody3D/"):
		DirAccess.open("res://").make_dir_recursive_absolute(PROJECT_TEMPLATES + "CharacterBody3D/")
	
	# Sync templates from addon to project location
	sync_templates()
	print("[3d-first-person-wasd] CharacterBody3D templates synced!")

# Renamed from _exit_tree to be called manually
func remove_templates():
	# Remove synced templates when plugin disabled
	remove_synced_templates()
	print("[3d-first-person-wasd] CharacterBody3D templates removed!")

func sync_templates():
	# Look specifically in the CharacterBody3D folder of your addon
	var addon_dir = DirAccess.open(ADDON_TEMPLATES + "CharacterBody3D/")
	if addon_dir:
		addon_dir.list_dir_begin()
		var file_name = addon_dir.get_next()
		while file_name != "":
			if file_name.ends_with(".gd"):
				copy_template_file(file_name)
			file_name = addon_dir.get_next()

func copy_template_file(filename: String):
	var source = FileAccess.open(ADDON_TEMPLATES + "CharacterBody3D/" + filename, FileAccess.READ)
	if source:
		var content = source.get_as_text()
		source.close()
		
		var dest = FileAccess.open(PROJECT_TEMPLATES + "CharacterBody3D/" + filename, FileAccess.WRITE)
		if dest:
			dest.store_string(content)
			dest.close()

func remove_synced_templates():
	# Remove only the specific file as defined in your original code 
	DirAccess.open("res://").remove_absolute(PROJECT_TEMPLATES + "CharacterBody3D/wasd_movement.gd")